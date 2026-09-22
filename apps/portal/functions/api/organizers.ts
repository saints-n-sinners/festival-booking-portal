/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

interface CountRow {
  total: number
}

interface OrganizerRow {
  id: number
  name: string
  organizer_type: string | null
  country_id: number | null
  country: string | null
  country_code: string | null
  website_url: string | null
  instagram_url: string | null
  facebook_url: string | null
  email: string | null
  phone: string | null
  notes: string | null
  festival_count: number
}

function boundedInteger(
  value: string | null,
  fallback: number,
  minimum: number,
  maximum: number
): number {
  if (value === null || !/^\d+$/.test(value)) {
    return fallback
  }

  return Math.min(maximum, Math.max(minimum, Number(value)))
}

export const onRequestGet: PagesFunction<Env> = async (
  context
) => {
  const currentUser = await getCurrentUser(
    context.request,
    context.env
  )

  if (!currentUser) {
    return Response.json(
      { success: false, error: 'Oturum gerekli.' },
      { status: 401 }
    )
  }

  const params = new URL(context.request.url).searchParams
  const search = (params.get('search') ?? '').trim().slice(0, 100)
  const country = (params.get('country') ?? '')
    .trim()
    .toUpperCase()
    .slice(0, 2)
  const limit = boundedInteger(params.get('limit'), 25, 1, 100)
  const offset = boundedInteger(params.get('offset'), 0, 0, 100000)

  const filters = `
    WHERE organizers.is_active = 1
      AND (? = '' OR countries.iso_code = ?)
      AND (
        ? = ''
        OR organizers.name LIKE '%' || ? || '%'
        OR organizers.organizer_type LIKE '%' || ? || '%'
        OR organizers.email LIKE '%' || ? || '%'
        OR countries.name LIKE '%' || ? || '%'
      )
  `

  const values = [
    country,
    country,
    search,
    search,
    search,
    search,
    search,
  ]

  try {
    const [countRow, result] = await Promise.all([
      context.env.DB.prepare(
        `
          SELECT COUNT(*) AS total
          FROM organizers
          LEFT JOIN countries
            ON countries.id = organizers.country_id
          ${filters}
        `
      )
        .bind(...values)
        .first<CountRow>(),

      context.env.DB.prepare(
        `
          SELECT
            organizers.id,
            organizers.name,
            organizers.organizer_type,
            organizers.country_id,
            countries.name AS country,
            countries.iso_code AS country_code,
            organizers.website_url,
            organizers.instagram_url,
            organizers.facebook_url,
            COALESCE(
              NULLIF(organizers.email, ''),
              (
                SELECT contacts.email
                FROM contacts
                WHERE contacts.organizer_id = organizers.id
                  AND contacts.email IS NOT NULL
                  AND contacts.email != ''
                ORDER BY contacts.id
                LIMIT 1
              ),
              (
                SELECT contacts.email
                FROM contacts
                INNER JOIN festivals
                  ON festivals.id = contacts.festival_id
                WHERE festivals.organizer_id = organizers.id
                  AND contacts.email IS NOT NULL
                  AND contacts.email != ''
                ORDER BY contacts.id
                LIMIT 1
              )
            ) AS email,
            COALESCE(
              NULLIF(organizers.phone, ''),
              (
                SELECT contacts.phone
                FROM contacts
                WHERE contacts.organizer_id = organizers.id
                  AND contacts.phone IS NOT NULL
                  AND contacts.phone != ''
                ORDER BY contacts.id
                LIMIT 1
              ),
              (
                SELECT contacts.phone
                FROM contacts
                INNER JOIN festivals
                  ON festivals.id = contacts.festival_id
                WHERE festivals.organizer_id = organizers.id
                  AND contacts.phone IS NOT NULL
                  AND contacts.phone != ''
                ORDER BY contacts.id
                LIMIT 1
              )
            ) AS phone,
            organizers.notes,
            (
              SELECT COUNT(*)
              FROM festivals
              WHERE festivals.organizer_id = organizers.id
                AND festivals.is_active = 1
            ) AS festival_count

          FROM organizers
          LEFT JOIN countries
            ON countries.id = organizers.country_id
          ${filters}
          ORDER BY festival_count DESC, organizers.name ASC
          LIMIT ? OFFSET ?
        `
      )
        .bind(...values, limit, offset)
        .all<OrganizerRow>(),
    ])

    return Response.json(
      {
        success: true,
        total: countRow?.total ?? 0,
        limit,
        offset,
        organizers: result.results,
      },
      { headers: { 'Cache-Control': 'no-store' } }
    )
  } catch (error) {
    console.error('Organizers could not be loaded:', error)

    return Response.json(
      { success: false, error: 'Organizatörler yüklenemedi.' },
      {
        status: 500,
        headers: { 'Cache-Control': 'no-store' },
      }
    )
  }
}
