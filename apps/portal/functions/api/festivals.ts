/// <reference types="@cloudflare/workers-types" />

import type { Env } from '../_lib/auth'

interface FestivalRow {
  id: number
  external_id: string
  name: string
  country: string
  country_code: string
  city: string
  genres: string
  scale: string
  scale_category: string
  event_type: string
  organizer: string | null
  website_url: string | null
  facebook_url: string | null
  instagram_url: string | null
  email: string | null
  phone: string | null
  priority: string
  is_stretch: number
  total_score: number
  confidence: string
  pipeline_status: string
  status_2027: string
  date_text: string
  application_window: string | null
  application_method: string
  application_status: string
  next_action: string
  last_verified: string
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

  const pipelineStatus = (
    url.searchParams.get('status') ?? ''
  )
    .trim()
    .slice(0, 20)

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
      AND (? = '' OR festival_research.priority = ?)
      AND (? = '' OR festival_research.pipeline_status = ?)
      AND (
        ? = ''
        OR festivals.name LIKE '%' || ? || '%'
        OR festivals.city LIKE '%' || ? || '%'
        OR festivals.genres LIKE '%' || ? || '%'
        OR organizers.name LIKE '%' || ? || '%'
        OR countries.name LIKE '%' || ? || '%'
      )
  `

  const filterValues = [
    country,
    country,
    priority,
    priority,
    pipelineStatus,
    pipelineStatus,
    search,
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
        FROM festivals
        INNER JOIN countries
          ON countries.id = festivals.country_id
        LEFT JOIN organizers
          ON organizers.id = festivals.organizer_id
        INNER JOIN festival_research
          ON festival_research.festival_id = festivals.id
        ${filters}
      `
    )
      .bind(...filterValues)
      .first<CountRow>()

    const result = await context.env.DB.prepare(
      `
        SELECT
          festivals.id,
          festivals.external_id,
          festivals.name,
          countries.name AS country,
          countries.iso_code AS country_code,
          festivals.city,
          festivals.genres,
          festivals.scale,
          festivals.scale_category,
          festivals.event_type,
          organizers.name AS organizer,
          festivals.website_url,
          festivals.facebook_url,
          festivals.instagram_url,

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
          ) AS phone,

          festival_research.priority,
          festival_research.is_stretch,
          festival_research.total_score,
          festival_research.confidence,
          festival_research.pipeline_status,
          festival_research.last_verified,

          festival_editions.status_text AS status_2027,
          festival_editions.date_text,
          festival_editions.application_window_text
            AS application_window,

          applications.application_method,
          applications.status AS application_status,
          applications.next_action

        FROM festivals

        INNER JOIN countries
          ON countries.id = festivals.country_id

        LEFT JOIN organizers
          ON organizers.id = festivals.organizer_id

        INNER JOIN festival_research
          ON festival_research.festival_id = festivals.id

        LEFT JOIN festival_editions
          ON festival_editions.festival_id = festivals.id
          AND festival_editions.edition_year = 2027

        LEFT JOIN applications
          ON applications.festival_edition_id =
            festival_editions.id
          AND applications.band_name =
            'Saints ''N'' Sinners'

        ${filters}

        ORDER BY
          CASE festival_research.priority
            WHEN 'A' THEN 1
            WHEN 'B' THEN 2
            WHEN 'C' THEN 3
            WHEN 'D' THEN 4
            ELSE 5
          END,
          festival_research.total_score DESC,
          festivals.name ASC

        LIMIT ? OFFSET ?
      `
    )
      .bind(...filterValues, limit, offset)
      .all<FestivalRow>()

    return Response.json(
      {
        success: true,
        total: countResult?.total ?? 0,
        limit,
        offset,
        festivals: result.results,
      },
      {
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  } catch (error) {
    console.error('Festivals could not be loaded:', error)

    return Response.json(
      {
        success: false,
        error: 'Festival kayıtları yüklenemedi.',
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