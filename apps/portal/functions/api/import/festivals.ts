/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../_lib/auth'

type CsvRow = Record<string, unknown>

interface ImportRequestBody {
  rows?: unknown
}

interface CountryRecord {
  id: number
  name: string
  iso_code: string
}

interface OrganizerRecord {
  id: number
}

interface FestivalRecord {
  id: number
  external_id: string
}

interface EditionRecord {
  id: number
}

interface MaxExternalIdRecord {
  external_id: string | null
}

interface ImportResult {
  festival: string
  country: string
  status: 'imported' | 'skipped' | 'failed'
  external_id?: string
  reason?: string
}

function text(
  row: CsvRow,
  column: string,
  maximumLength = 5000
): string | null {
  const value = row[column]

  if (typeof value !== 'string') {
    return null
  }

  const result = value.trim()

  if (!result) {
    return null
  }

  return result.slice(0, maximumLength)
}

function numberValue(
  row: CsvRow,
  column: string
): number | null {
  const value = text(row, column, 100)

  if (!value) {
    return null
  }

  const parsed = Number.parseFloat(value)

  return Number.isFinite(parsed)
    ? parsed
    : null
}

function stretchValue(row: CsvRow): number {
  const value = (
    text(row, 'Stretch', 20) ?? ''
  )
    .trim()
    .toLowerCase()

  return [
    'yes',
    'true',
    '1',
    'y',
  ].includes(value)
    ? 1
    : 0
}

function validUrl(
  value: string | null
): boolean {
  if (!value) {
    return true
  }

  try {
    const url = new URL(value)

    return (
      url.protocol === 'http:' ||
      url.protocol === 'https:'
    )
  } catch {
    return false
  }
}

function normalizePriority(
  value: string | null
): 'A' | 'B' | 'C' | 'D' {
  const normalized = (
    value ?? ''
  )
    .trim()
    .toUpperCase()

  if (
    normalized === 'A' ||
    normalized === 'B' ||
    normalized === 'C' ||
    normalized === 'D'
  ) {
    return normalized
  }

  return 'C'
}

function normalizeConfidence(
  value: string | null
): 'High' | 'Medium' | 'Low' {
  const normalized = (
    value ?? ''
  )
    .trim()
    .toLowerCase()

  if (normalized === 'high') {
    return 'High'
  }

  if (normalized === 'low') {
    return 'Low'
  }

  return 'Medium'
}

function normalizeApplicationStatus(
  statusText: string | null
): string {
  const value = (
    statusText ?? ''
  ).toLowerCase()

  if (
    value.includes('open') ||
    value.includes('application open') ||
    value.includes('applications open')
  ) {
    return 'open'
  }

  return 'unknown'
}

function safeIsoCode(
  countryName: string
): string {
  const knownCountries: Record<
    string,
    string
  > = {
    germany: 'DE',
    deutschland: 'DE',

    russia: 'RU',
    'russian federation': 'RU',

    estonia: 'EE',
    lithuania: 'LT',
    italy: 'IT',

    france: 'FR',
    spain: 'ES',
    portugal: 'PT',
    austria: 'AT',
    belgium: 'BE',
    bulgaria: 'BG',
    croatia: 'HR',

    czechia: 'CZ',
    'czech republic': 'CZ',

    denmark: 'DK',
    finland: 'FI',
    greece: 'GR',
    hungary: 'HU',
    ireland: 'IE',
    latvia: 'LV',
    netherlands: 'NL',
    norway: 'NO',
    poland: 'PL',
    romania: 'RO',
    serbia: 'RS',
    slovakia: 'SK',
    slovenia: 'SI',
    sweden: 'SE',
    switzerland: 'CH',

    türkiye: 'TR',
    turkey: 'TR',
    turkiye: 'TR',

    'united kingdom': 'GB',
    uk: 'GB',
    'great britain': 'GB',
  }

  return (
    knownCountries[
      countryName
        .trim()
        .toLowerCase()
    ] ?? ''
  )
}

async function getOrCreateCountry(
  env: Env,
  countryName: string
): Promise<CountryRecord> {
  /*
   * 1. Önce ülke adına göre ara.
   */
  const existingByName =
    await env.DB.prepare(
      `
        SELECT
          id,
          name,
          iso_code
        FROM countries
        WHERE name = ? COLLATE NOCASE
        LIMIT 1
      `
    )
      .bind(countryName)
      .first<CountryRecord>()

  if (existingByName) {
    return existingByName
  }

  /*
   * 2. CSV ülke adı ile DB ülke adı
   * farklı olabilir.
   *
   * Örneğin:
   * Germany / Deutschland
   *
   * Bu nedenle ISO kodunu bulup mevcut
   * country kaydını ISO üzerinden de
   * kontrol ediyoruz.
   */
  const isoCode =
    safeIsoCode(countryName)

  if (isoCode) {
    const existingByIso =
      await env.DB.prepare(
        `
          SELECT
            id,
            name,
            iso_code
          FROM countries
          WHERE iso_code = ? COLLATE NOCASE
          LIMIT 1
        `
      )
        .bind(isoCode)
        .first<CountryRecord>()

    if (existingByIso) {
      return existingByIso
    }
  }

  /*
   * 3. Ne isim ne de ISO üzerinden
   * bulunamadıysa yeni ülke oluştur.
   *
   * ISO kodunu bilmiyorsak otomatik
   * country yaratmıyoruz.
   */
  if (!isoCode) {
    throw new Error(
      `Ülke sistemde bulunamadı ve ISO kodu bilinmiyor: ${countryName}`
    )
  }

  await env.DB.prepare(
    `
      INSERT INTO countries (
        name,
        iso_code,
        is_active
      )
      VALUES (?, ?, 1)
    `
  )
    .bind(
      countryName,
      isoCode
    )
    .run()

  const created =
    await env.DB.prepare(
      `
        SELECT
          id,
          name,
          iso_code
        FROM countries
        WHERE iso_code = ? COLLATE NOCASE
        LIMIT 1
      `
    )
      .bind(isoCode)
      .first<CountryRecord>()

  if (!created) {
    throw new Error(
      `Ülke oluşturulamadı: ${countryName}`
    )
  }

  return created
}

async function getOrCreateOrganizer(
  env: Env,
  countryId: number,
  organizerName: string | null,
  websiteUrl: string | null,
  instagramUrl: string | null,
  facebookUrl: string | null,
  email: string | null,
  phone: string | null
): Promise<number | null> {
  if (!organizerName) {
    return null
  }

  const existing =
    await env.DB.prepare(
      `
        SELECT id
        FROM organizers
        WHERE country_id = ?
          AND name = ? COLLATE NOCASE
          AND is_active = 1
        LIMIT 1
      `
    )
      .bind(
        countryId,
        organizerName
      )
      .first<OrganizerRecord>()

  if (existing) {
    return existing.id
  }

  await env.DB.prepare(
    `
      INSERT INTO organizers (
        country_id,
        name,
        organizer_type,
        website_url,
        instagram_url,
        facebook_url,
        email,
        phone,
        is_active
      )
      VALUES (
        ?,
        ?,
        'festival organizer',
        ?,
        ?,
        ?,
        ?,
        ?,
        1
      )
    `
  )
    .bind(
      countryId,
      organizerName,
      websiteUrl,
      instagramUrl,
      facebookUrl,
      email,
      phone
    )
    .run()

  const created =
    await env.DB.prepare(
      `
        SELECT id
        FROM organizers
        WHERE country_id = ?
          AND name = ? COLLATE NOCASE
        ORDER BY id DESC
        LIMIT 1
      `
    )
      .bind(
        countryId,
        organizerName
      )
      .first<OrganizerRecord>()

  return created?.id ?? null
}

async function nextExternalId(
  env: Env
): Promise<string> {
  const result =
    await env.DB.prepare(
      `
        SELECT external_id
        FROM festivals
        WHERE external_id GLOB 'SNS-[0-9]*'
        ORDER BY
          CAST(
            SUBSTR(
              external_id,
              5
            ) AS INTEGER
          ) DESC
        LIMIT 1
      `
    ).first<MaxExternalIdRecord>()

  const current =
    result?.external_id
      ? Number.parseInt(
          result.external_id.replace(
            'SNS-',
            ''
          ),
          10
        )
      : 0

  const next =
    Number.isFinite(current)
      ? current + 1
      : 1

  return `SNS-${String(
    next
  ).padStart(3, '0')}`
}

async function importFestival(
  env: Env,
  row: CsvRow,
  importBatch: string,
  sourceRow: number
): Promise<ImportResult> {
  const festivalName = text(
    row,
    'Festival',
    150
  )

  const countryName = text(
    row,
    'Country',
    100
  )

  if (!festivalName) {
    return {
      festival: '—',
      country:
        countryName ?? '—',
      status: 'failed',
      reason:
        'Festival adı eksik.',
    }
  }

  if (!countryName) {
    return {
      festival: festivalName,
      country: '—',
      status: 'failed',
      reason:
        'Ülke bilgisi eksik.',
    }
  }

  const websiteUrl = text(
    row,
    'Website',
    500
  )

  const facebookUrl = text(
    row,
    'Facebook',
    500
  )

  const instagramUrl = text(
    row,
    'Instagram',
    500
  )

  const source1 = text(
    row,
    'Source 1',
    500
  )

  const source2 = text(
    row,
    'Source 2',
    500
  )

  const urls = [
    websiteUrl,
    facebookUrl,
    instagramUrl,
    source1,
    source2,
  ]

  if (
    urls.some(
      (url) => !validUrl(url)
    )
  ) {
    return {
      festival: festivalName,
      country: countryName,
      status: 'failed',
      reason:
        'Geçersiz URL bulundu.',
    }
  }

  let createdFestivalId:
    | number
    | null = null

  try {
    const country =
      await getOrCreateCountry(
        env,
        countryName
      )

    /*
     * Duplicate kontrolü DB'de kayıtlı
     * gerçek country ID üzerinden yapılır.
     */
    const duplicate =
      await env.DB.prepare(
        `
          SELECT id
          FROM festivals
          WHERE country_id = ?
            AND name = ? COLLATE NOCASE
            AND is_active = 1
          LIMIT 1
        `
      )
        .bind(
          country.id,
          festivalName
        )
        .first<{
          id: number
        }>()

    if (duplicate) {
      return {
        festival: festivalName,
        country: countryName,
        status: 'skipped',
        reason:
          'Bu festival aynı ülkede zaten kayıtlı.',
      }
    }

    const organizerName =
      text(
        row,
        'Organizer',
        200
      )

    const email = text(
      row,
      'Email',
      320
    )

    const phone = text(
      row,
      'Phone',
      100
    )

    const organizerId =
      await getOrCreateOrganizer(
        env,
        country.id,
        organizerName,
        websiteUrl,
        instagramUrl,
        facebookUrl,
        email,
        phone
      )

    const externalId =
      await nextExternalId(env)

    const city =
      text(
        row,
        'City',
        100
      ) ?? ''

    const genres =
      text(
        row,
        'Genres',
        500
      ) ?? 'Unknown'

    const scale =
      text(
        row,
        'Scale',
        100
      ) ?? 'Unknown'

    const eventType =
      text(
        row,
        'Event type',
        100
      ) ?? 'festival'

    await env.DB.prepare(
      `
        INSERT INTO festivals (
          country_id,
          organizer_id,
          name,
          city,
          genres,
          scale,
          website_url,
          instagram_url,
          facebook_url,
          source_url,
          is_active,
          external_id,
          event_type,
          scale_category
        )
        VALUES (
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          1,
          ?,
          ?,
          ?
        )
      `
    )
      .bind(
        country.id,
        organizerId,
        festivalName,
        city,
        genres,
        scale,
        websiteUrl,
        instagramUrl,
        facebookUrl,
        source1,
        externalId,
        eventType,
        scale
      )
      .run()

    const festival =
      await env.DB.prepare(
        `
          SELECT
            id,
            external_id
          FROM festivals
          WHERE external_id = ?
          LIMIT 1
        `
      )
        .bind(externalId)
        .first<FestivalRecord>()

    if (!festival) {
      throw new Error(
        'Festival kaydı oluşturulduktan sonra bulunamadı.'
      )
    }

    createdFestivalId =
      festival.id

    const priority =
      normalizePriority(
        text(
          row,
          'Priority',
          10
        )
      )

    const confidence =
      normalizeConfidence(
        text(
          row,
          'Confidence',
          20
        )
      )

    const pipelineStatus =
      text(
        row,
        'Pipeline status',
        100
      ) ?? 'Monitor'

    const nextAction =
      text(
        row,
        'Next action',
        2000
      ) ??
      'Research booking contact and application window'

    const lastVerified =
      text(
        row,
        'Last verified',
        100
      )

    await env.DB.prepare(
      `
        INSERT INTO festival_research (
          festival_id,
          priority,
          is_stretch,
          total_score,
          genre_score,
          foreign_score,
          career_match_score,
          contact_score,
          economics_score,
          route_score,
          promotion_score,
          confidence,
          pipeline_status,
          foreign_band_history,
          example_artists,
          fit_notes,
          next_action,
          last_verified,
          import_batch,
          source_row
        )
        VALUES (
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?,
          ?
        )
      `
    )
      .bind(
        festival.id,
        priority,
        stretchValue(row),
        numberValue(
          row,
          'Score'
        ),
        numberValue(
          row,
          'Genre (25)'
        ),
        numberValue(
          row,
          'Foreign (15)'
        ),
        numberValue(
          row,
          'Career match (15)'
        ),
        numberValue(
          row,
          'Contact (15)'
        ),
        numberValue(
          row,
          'Economics (10)'
        ),
        numberValue(
          row,
          'Route (10)'
        ),
        numberValue(
          row,
          'Promotion (10)'
        ),
        confidence,
        pipelineStatus,
        text(
          row,
          'Foreign band history',
          5000
        ),
        text(
          row,
          'Example artists',
          5000
        ),
        text(
          row,
          'Fit notes',
          5000
        ),
        nextAction,
        lastVerified,
        importBatch,
        sourceRow
      )
      .run()

    const statusText =
      text(
        row,
        '2027 status',
        200
      ) ?? 'Monitor'

    const dateText =
      text(
        row,
        'Last / next date',
        300
      ) ?? 'TBA'

    const applicationWindow =
      text(
        row,
        'Application window',
        500
      )

    await env.DB.prepare(
      `
        INSERT INTO festival_editions (
          festival_id,
          edition_year,
          application_status,
          status_text,
          date_text,
          application_window_text
        )
        VALUES (
          ?,
          2027,
          ?,
          ?,
          ?,
          ?
        )
      `
    )
      .bind(
        festival.id,
        normalizeApplicationStatus(
          statusText
        ),
        statusText,
        dateText,
        applicationWindow
      )
      .run()

    const edition =
      await env.DB.prepare(
        `
          SELECT id
          FROM festival_editions
          WHERE festival_id = ?
            AND edition_year = 2027
          LIMIT 1
        `
      )
        .bind(festival.id)
        .first<EditionRecord>()

    if (!edition) {
      throw new Error(
        'Festival edition kaydı oluşturulamadı.'
      )
    }

    if (source1) {
      await env.DB.prepare(
        `
          INSERT OR IGNORE INTO festival_sources (
            festival_id,
            source_url,
            source_order,
            last_verified
          )
          VALUES (
            ?,
            ?,
            1,
            ?
          )
        `
      )
        .bind(
          festival.id,
          source1,
          lastVerified
        )
        .run()
    }

    if (
      source2 &&
      source2 !== source1
    ) {
      await env.DB.prepare(
        `
          INSERT OR IGNORE INTO festival_sources (
            festival_id,
            source_url,
            source_order,
            last_verified
          )
          VALUES (
            ?,
            ?,
            2,
            ?
          )
        `
      )
        .bind(
          festival.id,
          source2,
          lastVerified
        )
        .run()
    }

    if (email || phone) {
      await env.DB.prepare(
        `
          INSERT INTO contacts (
            festival_id,
            organizer_id,
            role,
            email,
            phone,
            preferred_channel,
            verified_at
          )
          VALUES (
            ?,
            ?,
            'Booking',
            ?,
            ?,
            ?,
            ?
          )
        `
      )
        .bind(
          festival.id,
          organizerId,
          email,
          phone,
          email
            ? 'email'
            : 'phone',
          lastVerified
        )
        .run()
    }

    const applicationMethod =
      text(
        row,
        'Application method',
        2000
      ) ??
      'Direct contact / research required'

    await env.DB.prepare(
      `
        INSERT INTO applications (
          festival_edition_id,
          band_name,
          status,
          priority,
          application_method,
          next_action
        )
        VALUES (
          ?,
          'Saints ''N'' Sinners',
          'not_started',
          ?,
          ?,
          ?
        )
      `
    )
      .bind(
        edition.id,
        priority,
        applicationMethod,
        nextAction
      )
      .run()

    return {
      festival: festivalName,
      country: countryName,
      status: 'imported',
      external_id:
        festival.external_id,
    }
  } catch (error) {
    console.error(
      `Festival import failed: ${festivalName}`,
      error
    )

    /*
     * Festival oluşturulduktan sonraki
     * adımlardan biri başarısız olduysa
     * festival silinir.
     *
     * Bağlı edition/research/source/contact
     * kayıtları FK cascade ile temizlenir.
     */
    if (
      createdFestivalId !== null
    ) {
      try {
        await env.DB.prepare(
          `
            DELETE FROM festivals
            WHERE id = ?
          `
        )
          .bind(
            createdFestivalId
          )
          .run()
      } catch (cleanupError) {
        console.error(
          'Incomplete festival cleanup failed:',
          cleanupError
        )
      }
    }

    return {
      festival: festivalName,
      country: countryName,
      status: 'failed',
      reason:
        error instanceof Error
          ? error.message
          : 'Festival import edilemedi.',
    }
  }
}

export const onRequestPost:
  PagesFunction<Env> = async (
    context
  ) => {
    const currentUser =
      await getCurrentUser(
        context.request,
        context.env
      )

    if (!currentUser) {
      return Response.json(
        {
          success: false,
          error:
            'Oturum gerekli.',
        },
        {
          status: 401,
        }
      )
    }

    let body: ImportRequestBody

    try {
      body =
        (await context.request.json()) as ImportRequestBody
    } catch {
      return Response.json(
        {
          success: false,
          error:
            'Geçersiz JSON isteği.',
        },
        {
          status: 400,
        }
      )
    }

    if (
      !Array.isArray(body.rows)
    ) {
      return Response.json(
        {
          success: false,
          error:
            'Import için rows dizisi gerekli.',
        },
        {
          status: 400,
        }
      )
    }

    if (
      body.rows.length === 0
    ) {
      return Response.json(
        {
          success: false,
          error:
            'Import edilecek kayıt bulunamadı.',
        },
        {
          status: 400,
        }
      )
    }

    if (
      body.rows.length > 200
    ) {
      return Response.json(
        {
          success: false,
          error:
            'Tek seferde en fazla 200 festival import edilebilir.',
        },
        {
          status: 400,
        }
      )
    }

    const rows =
      body.rows.filter(
        (
          row
        ): row is CsvRow =>
          typeof row ===
            'object' &&
          row !== null &&
          !Array.isArray(row)
      )

    if (
      rows.length !==
      body.rows.length
    ) {
      return Response.json(
        {
          success: false,
          error:
            'Import verisinde geçersiz satırlar bulundu.',
        },
        {
          status: 400,
        }
      )
    }

    const importBatch =
      `portal:${new Date().toISOString()}:${currentUser.email}`

    const results:
      ImportResult[] = []

    /*
     * Sequential çalıştırıyoruz.
     *
     * External ID üretimi önceki festivalin
     * DB'ye yazılmış olmasına bağlı.
     */
    for (
      let index = 0;
      index < rows.length;
      index += 1
    ) {
      const result =
        await importFestival(
          context.env,
          rows[index],
          importBatch,
          index + 1
        )

      results.push(result)
    }

    const imported =
      results.filter(
        (result) =>
          result.status ===
          'imported'
      ).length

    const skipped =
      results.filter(
        (result) =>
          result.status ===
          'skipped'
      ).length

    const failed =
      results.filter(
        (result) =>
          result.status ===
          'failed'
      ).length

    return Response.json(
      {
        success:
          failed === 0,

        summary: {
          requested:
            rows.length,
          imported,
          skipped,
          failed,
        },

        results,
      },
      {
        status:
          failed === 0
            ? 200
            : 207,

        headers: {
          'Cache-Control':
            'no-store',
        },
      }
    )
  }