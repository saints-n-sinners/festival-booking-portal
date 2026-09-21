/// <reference types="@cloudflare/workers-types" />

import type { Env } from '../_lib/auth'

interface ApplicationRow {
  id: number
  status: string
  priority: string
  assigned_to: string | null
  submitted_at: string | null
  follow_up_date: string | null
  response_date: string | null
  notes: string | null
  application_method: string | null
  next_action: string | null
  response_text: string | null
  updated_at: string
  festival_id: number
  external_id: string
  festival_name: string
  country: string
  country_code: string
  city: string
  edition_year: number
  event_status: string | null
  date_text: string | null
  application_window: string | null
  total_score: number | null
  confidence: string | null
  email: string | null
  phone: string | null
}

interface CountRow {
  total: number
}

function boundedInteger(
  value: string | null,
  defaultValue: number,
  minimum: number,
  maximum: number
): number {
  const parsed = Number.parseInt(value ?? '', 10)

  if (!Number.isFinite(parsed)) {
    return defaultValue
  }

  return Math.min(maximum, Math.max(minimum, parsed))
}

export const onRequestGet: PagesFunction<Env> = async (context) => {
  const url = new URL(context.request.url)

  const country = (
    url.searchParams.get('country') ?? ''
  )
    .trim()
    .toUpperCase()
    .slice(0, 2)

  const priority = (
    url.searchParams.get('priority') ?? ''
  )
    .trim()
    .toUpperCase()
    .slice(0, 1)

  const status = (
    url.searchParams.get('status') ?? ''
  )
    .trim()
    .slice(0, 30)

  const search = (
    url.searchParams.get('search') ?? ''
  )
    .trim()
    .slice(0, 100)

  const limit = boundedInteger(
    url.searchParams.get('limit'),
    50,
    1,
    200
  )

  const offset = boundedInteger(
    url.searchParams.get('offset'),
    0,
    0,
    100000
  )

  const filters = `
    WHERE festivals.is_active = 1
      AND (? = '' OR countries.iso_code = ?)
      AND (? = '' OR applications.priority = ?)
      AND (? = '' OR applications.status = ?)
      AND (
        ? = ''
        OR festivals.name LIKE '%' || ? || '%'
        OR festivals.city LIKE '%' || ? || '%'
        OR countries.name LIKE '%' || ? || '%'
        OR applications.next_action LIKE '%' || ? || '%'
      )
  `

  const filterValues = [
    country,
    country,
    priority,
    priority,
    status,
    status,
    search,
    search,
    search,
    search,
    search,
  ]

  try {
    const countResult = await context.env.DB.prepare(
      `
        SELECT COUNT(*) AS total
        FROM applications

        INNER JOIN festival_editions
          ON festival_editions.id =
            applications.festival_edition_id

        INNER JOIN festivals
          ON festivals.id =
            festival_editions.festival_id

        INNER JOIN countries
          ON countries.id = festivals.country_id

        ${filters}
      `
    )
      .bind(...filterValues)
      .first<CountRow>()

    const result = await context.env.DB.prepare(
      `
        SELECT
          applications.id,
          applications.status,
          applications.priority,
          applications.assigned_to,
          applications.submitted_at,
          applications.follow_up_date,
          applications.response_date,
          applications.notes,
          applications.application_method,
          applications.next_action,
          applications.response_text,
          applications.updated_at,

          festivals.id AS festival_id,
          festivals.external_id,
          festivals.name AS festival_name,
          festivals.city,

          countries.name AS country,
          countries.iso_code AS country_code,

          festival_editions.edition_year,
          festival_editions.status_text AS event_status,
          festival_editions.date_text,
          festival_editions.application_window_text
            AS application_window,

          festival_research.total_score,
          festival_research.confidence,

          (
            SELECT contacts.email
            FROM contacts
            WHERE contacts.festival_id = festivals.id
              AND contacts.email IS NOT NULL
              AND contacts.email != ''
            ORDER BY contacts.id
            LIMIT 1
          ) AS email,

          (
            SELECT contacts.phone
            FROM contacts
            WHERE contacts.festival_id = festivals.id
              AND contacts.phone IS NOT NULL
              AND contacts.phone != ''
            ORDER BY contacts.id
            LIMIT 1
          ) AS phone

        FROM applications

        INNER JOIN festival_editions
          ON festival_editions.id =
            applications.festival_edition_id

        INNER JOIN festivals
          ON festivals.id =
            festival_editions.festival_id

        INNER JOIN countries
          ON countries.id = festivals.country_id

        LEFT JOIN festival_research
          ON festival_research.festival_id = festivals.id

        ${filters}

        ORDER BY
          CASE applications.priority
            WHEN 'A' THEN 1
            WHEN 'B' THEN 2
            WHEN 'C' THEN 3
            WHEN 'D' THEN 4
            ELSE 5
          END,
          CASE
            WHEN applications.follow_up_date IS NULL THEN 1
            ELSE 0
          END,
          applications.follow_up_date ASC,
          festival_research.total_score DESC,
          festivals.name ASC

        LIMIT ? OFFSET ?
      `
    )
      .bind(...filterValues, limit, offset)
      .all<ApplicationRow>()

    return Response.json(
      {
        success: true,
        total: countResult?.total ?? 0,
        limit,
        offset,
        applications: result.results,
      },
      {
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  } catch (error) {
    console.error('Applications could not be loaded:', error)

    return Response.json(
      {
        success: false,
        error: 'Başvuru kayıtları yüklenemedi.',
      },
      {
        status: 500,
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  }
}