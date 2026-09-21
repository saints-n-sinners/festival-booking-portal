/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

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

interface CreateFestivalBody {
  name?: unknown
  country_id?: unknown
  city?: unknown
  venue?: unknown
  genres?: unknown
  scale?: unknown
  scale_category?: unknown
  event_type?: unknown
  website_url?: unknown
  instagram_url?: unknown
  facebook_url?: unknown
  source_url?: unknown
  notes?: unknown
  priority?: unknown
  is_stretch?: unknown
  total_score?: unknown
  confidence?: unknown
  pipeline_status?: unknown
  edition_year?: unknown
  status_text?: unknown
  date_text?: unknown
  application_window?: unknown
  application_method?: unknown
  next_action?: unknown
  email?: unknown
  phone?: unknown
}

interface CountryRecord {
  id: number
}

interface CreatedFestival {
  id: number
  external_id: string
  name: string
}

function optionalText(
  value: unknown,
  maximumLength: number
): string | null {
  if (typeof value !== 'string') {
    return null
  }

  const result = value.trim()

  if (!result) {
    return null
  }

  return result.slice(0, maximumLength)
}

function validWebUrl(value: string | null): boolean {
  if (!value) {
    return true
  }

  try {
    const url = new URL(value)
    return url.protocol === 'http:' || url.protocol === 'https:'
  } catch {
    return false
  }
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

export const onRequestPost: PagesFunction<Env> = async (
  context
) => {
  const currentUser = await getCurrentUser(
    context.request,
    context.env
  )

  if (!currentUser) {
    return Response.json(
      {
        success: false,
        error: 'Oturum gerekli.',
      },
      { status: 401 }
    )
  }

  let body: CreateFestivalBody

  try {
    body = (await context.request.json()) as CreateFestivalBody
  } catch {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz istek.',
      },
      { status: 400 }
    )
  }

  const name = optionalText(body.name, 150)
  const countryId =
    typeof body.country_id === 'number'
      ? body.country_id
      : Number.parseInt(String(body.country_id ?? ''), 10)

  if (!name || name.length < 2) {
    return Response.json(
      {
        success: false,
        error: 'Festival adı en az 2 karakter olmalıdır.',
      },
      { status: 400 }
    )
  }

  if (!Number.isInteger(countryId) || countryId <= 0) {
    return Response.json(
      {
        success: false,
        error: 'Geçerli bir ülke seçilmelidir.',
      },
      { status: 400 }
    )
  }

  const priority =
    typeof body.priority === 'string'
      ? body.priority.trim().toUpperCase()
      : 'C'

  if (!['A', 'B', 'C', 'D'].includes(priority)) {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz festival önceliği.',
      },
      { status: 400 }
    )
  }

  const confidence =
    typeof body.confidence === 'string'
      ? body.confidence.trim()
      : 'Medium'

  if (!['High', 'Medium', 'Low'].includes(confidence)) {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz güven seviyesi.',
      },
      { status: 400 }
    )
  }

  const pipelineStatus =
    typeof body.pipeline_status === 'string'
      ? body.pipeline_status.trim()
      : 'Monitor'

  if (!['Verified', 'Monitor'].includes(pipelineStatus)) {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz araştırma durumu.',
      },
      { status: 400 }
    )
  }

  const editionYear =
    typeof body.edition_year === 'number'
      ? body.edition_year
      : Number.parseInt(String(body.edition_year ?? ''), 10)

  if (
    !Number.isInteger(editionYear) ||
    editionYear < 2026 ||
    editionYear > 2100
  ) {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz festival edisyon yılı.',
      },
      { status: 400 }
    )
  }

  const scoreValue =
    typeof body.total_score === 'number'
      ? body.total_score
      : Number.parseFloat(String(body.total_score ?? '0'))
  const totalScore = Number.isFinite(scoreValue)
    ? Math.min(100, Math.max(0, scoreValue))
    : 0

  const isStretch =
    body.is_stretch === true || body.is_stretch === 1
      ? 1
      : 0

  const city = optionalText(body.city, 100) ?? ''
  const venue = optionalText(body.venue, 150)
  const genres = optionalText(body.genres, 500) ?? 'Unknown'
  const scale = optionalText(body.scale, 100) ?? 'Unknown'
  const scaleCategory =
    optionalText(body.scale_category, 100) ?? 'unknown'
  const eventType =
    optionalText(body.event_type, 100) ?? 'festival'
  const websiteUrl = optionalText(body.website_url, 500)
  const instagramUrl = optionalText(body.instagram_url, 500)
  const facebookUrl = optionalText(body.facebook_url, 500)
  const sourceUrl = optionalText(body.source_url, 500)
  const notes = optionalText(body.notes, 5000)
  const statusText =
    optionalText(body.status_text, 200) ?? 'Monitor'
  const dateText = optionalText(body.date_text, 300) ?? 'TBA'
  const applicationWindow = optionalText(
    body.application_window,
    500
  )
  const applicationMethod =
    optionalText(body.application_method, 2000) ??
    'Direct contact / research required'
  const nextAction =
    optionalText(body.next_action, 1000) ??
    'Research booking contact and application window'
  const email = optionalText(body.email, 320)
  const phone = optionalText(body.phone, 100)

  const urlFields = [
    websiteUrl,
    instagramUrl,
    facebookUrl,
    sourceUrl,
  ]

  if (urlFields.some((value) => !validWebUrl(value))) {
    return Response.json(
      {
        success: false,
        error: 'Web ve sosyal medya adresleri http:// veya https:// ile başlamalıdır.',
      },
      { status: 400 }
    )
  }

  let createdFestivalId: number | null = null

  try {
    const country = await context.env.DB.prepare(
      `
        SELECT id
        FROM countries
        WHERE id = ? AND is_active = 1
      `
    )
      .bind(countryId)
      .first<CountryRecord>()

    if (!country) {
      return Response.json(
        {
          success: false,
          error: 'Seçilen aktif ülke bulunamadı.',
        },
        { status: 404 }
      )
    }

    const duplicate = await context.env.DB.prepare(
      `
        SELECT id
        FROM festivals
        WHERE country_id = ?
          AND name = ? COLLATE NOCASE
          AND is_active = 1
      `
    )
      .bind(countryId, name)
      .first<{ id: number }>()

    if (duplicate) {
      return Response.json(
        {
          success: false,
          error: 'Bu festival aynı ülkede zaten kayıtlı.',
        },
        { status: 409 }
      )
    }

    const externalId = `SNS-MANUAL-${crypto
      .randomUUID()
      .slice(0, 8)
      .toUpperCase()}`

    await context.env.DB.prepare(
      `
        INSERT INTO festivals (
          country_id,
          name,
          city,
          venue,
          genres,
          scale,
          website_url,
          instagram_url,
          facebook_url,
          source_url,
          notes,
          is_active,
          external_id,
          event_type,
          scale_category
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1, ?, ?, ?)
      `
    )
      .bind(
        countryId,
        name,
        city,
        venue,
        genres,
        scale,
        websiteUrl,
        instagramUrl,
        facebookUrl,
        sourceUrl,
        notes,
        externalId,
        eventType,
        scaleCategory
      )
      .run()

    const festival = await context.env.DB.prepare(
      `
        SELECT id, external_id, name
        FROM festivals
        WHERE external_id = ?
      `
    )
      .bind(externalId)
      .first<CreatedFestival>()

    if (!festival) {
      throw new Error('Created festival could not be loaded')
    }

    createdFestivalId = festival.id

    const statements: D1PreparedStatement[] = [
      context.env.DB.prepare(
        `
          INSERT INTO festival_research (
            festival_id,
            priority,
            is_stretch,
            total_score,
            confidence,
            pipeline_status,
            next_action,
            last_verified,
            import_batch
          )
          VALUES (?, ?, ?, ?, ?, ?, ?, date('now'), ?)
        `
      ).bind(
        festival.id,
        priority,
        isStretch,
        totalScore,
        confidence,
        pipelineStatus,
        nextAction,
        `manual:${currentUser.email}`
      ),

      context.env.DB.prepare(
        `
          INSERT INTO festival_editions (
            festival_id,
            edition_year,
            application_status,
            status_text,
            date_text,
            application_window_text
          )
          VALUES (?, ?, 'unknown', ?, ?, ?)
        `
      ).bind(
        festival.id,
        editionYear,
        statusText,
        dateText,
        applicationWindow
      ),
    ]

    if (sourceUrl) {
      statements.push(
        context.env.DB.prepare(
          `
            INSERT INTO festival_sources (
              festival_id,
              source_url,
              source_order,
              last_verified
            )
            VALUES (?, ?, 1, date('now'))
          `
        ).bind(festival.id, sourceUrl)
      )
    }

    if (email || phone) {
      statements.push(
        context.env.DB.prepare(
          `
            INSERT INTO contacts (
              festival_id,
              role,
              email,
              phone,
              preferred_channel,
              verified_at
            )
            VALUES (?, 'Booking', ?, ?, ?, date('now'))
          `
        ).bind(
          festival.id,
          email,
          phone,
          email ? 'email' : 'phone'
        )
      )
    }

    await context.env.DB.batch(statements)

    const edition = await context.env.DB.prepare(
      `
        SELECT id
        FROM festival_editions
        WHERE festival_id = ? AND edition_year = ?
      `
    )
      .bind(festival.id, editionYear)
      .first<{ id: number }>()

    if (!edition) {
      throw new Error('Created festival edition could not be loaded')
    }

    await context.env.DB.prepare(
      `
        INSERT INTO applications (
          festival_edition_id,
          band_name,
          status,
          priority,
          application_method,
          next_action
        )
        VALUES (?, 'Saints ''N'' Sinners', 'not_started', ?, ?, ?)
      `
    )
      .bind(
        edition.id,
        priority,
        applicationMethod,
        nextAction
      )
      .run()

    return Response.json(
      {
        success: true,
        festival,
      },
      {
        status: 201,
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  } catch (error) {
    console.error('Festival could not be created:', error)

    if (createdFestivalId !== null) {
      try {
        await context.env.DB.prepare(
          `DELETE FROM festivals WHERE id = ?`
        )
          .bind(createdFestivalId)
          .run()
      } catch (cleanupError) {
        console.error(
          'Incomplete festival could not be removed:',
          cleanupError
        )
      }
    }

    return Response.json(
      {
        success: false,
        error: 'Festival kaydı oluşturulamadı.',
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