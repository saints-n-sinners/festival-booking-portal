/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../_lib/auth'

interface FestivalDetails {
  id: number
  external_id: string
  country_id: number
  name: string
  city: string | null
  venue: string | null
  genres: string | null
  scale: string | null
  scale_category: string | null
  event_type: string | null
  website_url: string | null
  instagram_url: string | null
  facebook_url: string | null
  notes: string | null
  is_active: number
  priority: string | null
  is_stretch: number | null
  total_score: number | null
  confidence: string | null
  pipeline_status: string | null
  edition_id: number | null
  edition_year: number | null
  status_text: string | null
  date_text: string | null
  application_window: string | null
  application_id: number | null
  application_method: string | null
  next_action: string | null
  contact_id: number | null
  email: string | null
  phone: string | null
  source_id: number | null
  source_url: string | null
}

interface UpdateFestivalBody {
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

function optionalText(
  value: unknown,
  maximumLength: number
): string | null {
  if (typeof value !== 'string') {
    return null
  }

  const result = value.trim()
  return result ? result.slice(0, maximumLength) : null
}

function textValue(
  value: unknown,
  currentValue: string | null,
  maximumLength: number
): string | null {
  return value === undefined
    ? currentValue
    : optionalText(value, maximumLength)
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

async function loadFestival(
  env: Env,
  id: number
): Promise<FestivalDetails | null> {
  return env.DB.prepare(
    `
      SELECT
        festivals.id,
        festivals.external_id,
        festivals.country_id,
        festivals.name,
        festivals.city,
        festivals.venue,
        festivals.genres,
        festivals.scale,
        festivals.scale_category,
        festivals.event_type,
        festivals.website_url,
        festivals.instagram_url,
        festivals.facebook_url,
        festivals.notes,
        festivals.is_active,

        festival_research.priority,
        festival_research.is_stretch,
        festival_research.total_score,
        festival_research.confidence,
        festival_research.pipeline_status,

        festival_editions.id AS edition_id,
        festival_editions.edition_year,
        festival_editions.status_text,
        festival_editions.date_text,
        festival_editions.application_window_text
          AS application_window,

        applications.id AS application_id,
        applications.application_method,
        applications.next_action,

        (
          SELECT contacts.id
          FROM contacts
          WHERE contacts.festival_id = festivals.id
          ORDER BY contacts.id
          LIMIT 1
        ) AS contact_id,

        (
          SELECT contacts.email
          FROM contacts
          WHERE contacts.festival_id = festivals.id
          ORDER BY contacts.id
          LIMIT 1
        ) AS email,

        (
          SELECT contacts.phone
          FROM contacts
          WHERE contacts.festival_id = festivals.id
          ORDER BY contacts.id
          LIMIT 1
        ) AS phone,

        (
          SELECT festival_sources.id
          FROM festival_sources
          WHERE festival_sources.festival_id = festivals.id
          ORDER BY festival_sources.source_order, festival_sources.id
          LIMIT 1
        ) AS source_id,

        (
          SELECT festival_sources.source_url
          FROM festival_sources
          WHERE festival_sources.festival_id = festivals.id
          ORDER BY festival_sources.source_order, festival_sources.id
          LIMIT 1
        ) AS source_url

      FROM festivals

      LEFT JOIN festival_research
        ON festival_research.festival_id = festivals.id

      LEFT JOIN festival_editions
        ON festival_editions.id = (
          SELECT edition.id
          FROM festival_editions AS edition
          WHERE edition.festival_id = festivals.id
          ORDER BY edition.edition_year DESC, edition.id DESC
          LIMIT 1
        )

      LEFT JOIN applications
        ON applications.festival_edition_id = festival_editions.id
        AND applications.band_name = 'Saints ''N'' Sinners'

      WHERE festivals.id = ?
    `
  )
    .bind(id)
    .first<FestivalDetails>()
}

function parseId(value: string | string[]): number {
  return Number.parseInt(
    Array.isArray(value) ? value[0] : value,
    10
  )
}

export const onRequestGet: PagesFunction<Env> = async (
  context
) => {
  const id = parseId(context.params.id)

  if (!Number.isInteger(id) || id <= 0) {
    return Response.json(
      { success: false, error: 'Geçersiz festival numarası.' },
      { status: 400 }
    )
  }

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

  try {
    const festival = await loadFestival(context.env, id)

    if (!festival) {
      return Response.json(
        { success: false, error: 'Festival bulunamadı.' },
        { status: 404 }
      )
    }

    return Response.json(
      { success: true, festival },
      { headers: { 'Cache-Control': 'no-store' } }
    )
  } catch (error) {
    console.error('Festival could not be loaded:', error)

    return Response.json(
      { success: false, error: 'Festival detayı yüklenemedi.' },
      { status: 500 }
    )
  }
}

export const onRequestPatch: PagesFunction<Env> = async (
  context
) => {
  const id = parseId(context.params.id)

  if (!Number.isInteger(id) || id <= 0) {
    return Response.json(
      { success: false, error: 'Geçersiz festival numarası.' },
      { status: 400 }
    )
  }

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

  let body: UpdateFestivalBody

  try {
    body = (await context.request.json()) as UpdateFestivalBody
  } catch {
    return Response.json(
      { success: false, error: 'Geçersiz istek.' },
      { status: 400 }
    )
  }

  try {
    const current = await loadFestival(context.env, id)

    if (!current) {
      return Response.json(
        { success: false, error: 'Festival bulunamadı.' },
        { status: 404 }
      )
    }

    const name = textValue(body.name, current.name, 150)
    const countryId =
      body.country_id === undefined
        ? current.country_id
        : Number.parseInt(String(body.country_id), 10)

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
        { success: false, error: 'Geçerli bir ülke seçilmelidir.' },
        { status: 400 }
      )
    }

    const country = await context.env.DB.prepare(
      `SELECT id FROM countries WHERE id = ? AND is_active = 1`
    )
      .bind(countryId)
      .first<{ id: number }>()

    if (!country) {
      return Response.json(
        { success: false, error: 'Seçilen aktif ülke bulunamadı.' },
        { status: 404 }
      )
    }

    const duplicate = await context.env.DB.prepare(
      `
        SELECT id
        FROM festivals
        WHERE country_id = ?
          AND name = ? COLLATE NOCASE
          AND id != ?
          AND is_active = 1
      `
    )
      .bind(countryId, name, id)
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

    const priority =
      body.priority === undefined
        ? current.priority ?? 'C'
        : String(body.priority).trim().toUpperCase()
    const confidence =
      body.confidence === undefined
        ? current.confidence ?? 'Medium'
        : String(body.confidence).trim()
    const pipelineStatus =
      body.pipeline_status === undefined
        ? current.pipeline_status ?? 'Monitor'
        : String(body.pipeline_status).trim()

    if (!['A', 'B', 'C', 'D'].includes(priority)) {
      return Response.json(
        { success: false, error: 'Geçersiz festival önceliği.' },
        { status: 400 }
      )
    }

    if (!['High', 'Medium', 'Low'].includes(confidence)) {
      return Response.json(
        { success: false, error: 'Geçersiz güven seviyesi.' },
        { status: 400 }
      )
    }

    if (!['Verified', 'Monitor'].includes(pipelineStatus)) {
      return Response.json(
        { success: false, error: 'Geçersiz araştırma durumu.' },
        { status: 400 }
      )
    }

    const editionYear =
      body.edition_year === undefined
        ? current.edition_year ?? 2027
        : Number.parseInt(String(body.edition_year), 10)

    if (editionYear < 2026 || editionYear > 2100) {
      return Response.json(
        { success: false, error: 'Geçersiz festival edisyon yılı.' },
        { status: 400 }
      )
    }

    const scoreCandidate =
      body.total_score === undefined
        ? current.total_score ?? 0
        : Number.parseFloat(String(body.total_score))
    const totalScore = Number.isFinite(scoreCandidate)
      ? Math.min(100, Math.max(0, scoreCandidate))
      : 0
    const isStretch =
      body.is_stretch === undefined
        ? current.is_stretch ?? 0
        : body.is_stretch === true || body.is_stretch === 1
          ? 1
          : 0

    const city = textValue(body.city, current.city, 100) ?? ''
    const venue = textValue(body.venue, current.venue, 150)
    const genres =
      textValue(body.genres, current.genres, 500) ?? 'Unknown'
    const scale =
      textValue(body.scale, current.scale, 100) ?? 'Unknown'
    const scaleCategory =
      textValue(
        body.scale_category,
        current.scale_category,
        100
      ) ?? 'unknown'
    const eventType =
      textValue(body.event_type, current.event_type, 100) ??
      'festival'
    const websiteUrl = textValue(
      body.website_url,
      current.website_url,
      500
    )
    const instagramUrl = textValue(
      body.instagram_url,
      current.instagram_url,
      500
    )
    const facebookUrl = textValue(
      body.facebook_url,
      current.facebook_url,
      500
    )
    const sourceUrl = textValue(
      body.source_url,
      current.source_url,
      500
    )
    const notes = textValue(body.notes, current.notes, 5000)
    const statusText =
      textValue(body.status_text, current.status_text, 200) ??
      'Monitor'
    const dateText =
      textValue(body.date_text, current.date_text, 300) ?? 'TBA'
    const applicationWindow = textValue(
      body.application_window,
      current.application_window,
      500
    )
    const applicationMethod =
      textValue(
        body.application_method,
        current.application_method,
        2000
      ) ?? 'Direct contact / research required'
    const nextAction =
      textValue(body.next_action, current.next_action, 1000) ??
      'Research booking contact and application window'
    const email = textValue(body.email, current.email, 320)
    const phone = textValue(body.phone, current.phone, 100)

    if (
      [websiteUrl, instagramUrl, facebookUrl, sourceUrl].some(
        (value) => !validWebUrl(value)
      )
    ) {
      return Response.json(
        {
          success: false,
          error: 'Web ve sosyal medya adresleri http:// veya https:// ile başlamalıdır.',
        },
        { status: 400 }
      )
    }

    await context.env.DB.batch([
      context.env.DB.prepare(
        `
          UPDATE festivals
          SET country_id = ?, name = ?, city = ?, venue = ?,
              genres = ?, scale = ?, scale_category = ?,
              event_type = ?, website_url = ?, instagram_url = ?,
              facebook_url = ?, source_url = ?, notes = ?,
              updated_at = CURRENT_TIMESTAMP
          WHERE id = ?
        `
      ).bind(
        countryId,
        name,
        city,
        venue,
        genres,
        scale,
        scaleCategory,
        eventType,
        websiteUrl,
        instagramUrl,
        facebookUrl,
        sourceUrl,
        notes,
        id
      ),

      context.env.DB.prepare(
        `
          INSERT INTO festival_research (
            festival_id, priority, is_stretch, total_score,
            confidence, pipeline_status, next_action,
            last_verified, import_batch
          )
          VALUES (?, ?, ?, ?, ?, ?, ?, date('now'), ?)
          ON CONFLICT(festival_id) DO UPDATE SET
            priority = excluded.priority,
            is_stretch = excluded.is_stretch,
            total_score = excluded.total_score,
            confidence = excluded.confidence,
            pipeline_status = excluded.pipeline_status,
            next_action = excluded.next_action,
            last_verified = excluded.last_verified,
            updated_at = CURRENT_TIMESTAMP
        `
      ).bind(
        id,
        priority,
        isStretch,
        totalScore,
        confidence,
        pipelineStatus,
        nextAction,
        `manual:${currentUser.email}`
      ),
    ])

    let editionId = current.edition_id

    if (editionId) {
      await context.env.DB.prepare(
        `
          UPDATE festival_editions
          SET edition_year = ?, status_text = ?, date_text = ?,
              application_window_text = ?,
              updated_at = CURRENT_TIMESTAMP
          WHERE id = ?
        `
      )
        .bind(
          editionYear,
          statusText,
          dateText,
          applicationWindow,
          editionId
        )
        .run()
    } else {
      const editionResult = await context.env.DB.prepare(
        `
          INSERT INTO festival_editions (
            festival_id, edition_year, application_status,
            status_text, date_text, application_window_text
          )
          VALUES (?, ?, 'unknown', ?, ?, ?)
        `
      )
        .bind(
          id,
          editionYear,
          statusText,
          dateText,
          applicationWindow
        )
        .run()

      editionId = Number(editionResult.meta.last_row_id)
    }

    if (current.application_id) {
      await context.env.DB.prepare(
        `
          UPDATE applications
          SET priority = ?, application_method = ?,
              next_action = ?, updated_at = CURRENT_TIMESTAMP
          WHERE id = ?
        `
      )
        .bind(
          priority,
          applicationMethod,
          nextAction,
          current.application_id
        )
        .run()
    } else {
      await context.env.DB.prepare(
        `
          INSERT INTO applications (
            festival_edition_id, band_name, status, priority,
            application_method, next_action
          )
          VALUES (?, 'Saints ''N'' Sinners', 'not_started', ?, ?, ?)
        `
      )
        .bind(
          editionId,
          priority,
          applicationMethod,
          nextAction
        )
        .run()
    }

    if (current.contact_id) {
      await context.env.DB.prepare(
        `
          UPDATE contacts
          SET email = ?, phone = ?,
              preferred_channel = ?,
              verified_at = date('now'),
              updated_at = CURRENT_TIMESTAMP
          WHERE id = ?
        `
      )
        .bind(
          email,
          phone,
          email ? 'email' : phone ? 'phone' : null,
          current.contact_id
        )
        .run()
    } else if (email || phone) {
      await context.env.DB.prepare(
        `
          INSERT INTO contacts (
            festival_id, role, email, phone,
            preferred_channel, verified_at
          )
          VALUES (?, 'Booking', ?, ?, ?, date('now'))
        `
      )
        .bind(
          id,
          email,
          phone,
          email ? 'email' : 'phone'
        )
        .run()
    }

    if (sourceUrl && current.source_id) {
      await context.env.DB.prepare(
        `
          UPDATE festival_sources
          SET source_url = ?, last_verified = date('now')
          WHERE id = ?
        `
      )
        .bind(sourceUrl, current.source_id)
        .run()
    } else if (sourceUrl) {
      await context.env.DB.prepare(
        `
          INSERT INTO festival_sources (
            festival_id, source_url, source_order, last_verified
          )
          VALUES (?, ?, 1, date('now'))
        `
      )
        .bind(id, sourceUrl)
        .run()
    }

    const festival = await loadFestival(context.env, id)

    return Response.json(
      { success: true, festival },
      { headers: { 'Cache-Control': 'no-store' } }
    )
  } catch (error) {
    console.error('Festival could not be updated:', error)

    return Response.json(
      { success: false, error: 'Festival güncellenemedi.' },
      { status: 500 }
    )
  }
}
