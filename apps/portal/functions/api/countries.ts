/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

interface Country {
  id: number
  name: string
  iso_code: string
  is_active: number
}

interface CreateCountryBody {
  name?: unknown
  iso_code?: unknown
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

  const url = new URL(context.request.url)
  const includeInactive =
    url.searchParams.get('include_inactive') === '1'

  try {
    const result = await context.env.DB.prepare(
      `
        SELECT id, name, iso_code, is_active
        FROM countries
        WHERE (? = 1 OR is_active = 1)
        ORDER BY is_active DESC, name ASC
      `
    )
      .bind(includeInactive ? 1 : 0)
      .all<Country>()

    return Response.json(
      { success: true, countries: result.results },
      { headers: { 'Cache-Control': 'no-store' } }
    )
  } catch (error) {
    console.error('Countries could not be loaded:', error)

    return Response.json(
      { success: false, error: 'Ülke verileri yüklenemedi.' },
      { status: 500 }
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
      { success: false, error: 'Oturum gerekli.' },
      { status: 401 }
    )
  }

  let body: CreateCountryBody

  try {
    body = (await context.request.json()) as CreateCountryBody
  } catch {
    return Response.json(
      { success: false, error: 'Geçersiz istek.' },
      { status: 400 }
    )
  }

  const name =
    typeof body.name === 'string' ? body.name.trim() : ''
  const isoCode =
    typeof body.iso_code === 'string'
      ? body.iso_code.trim().toUpperCase()
      : ''

  if (name.length < 2 || name.length > 100) {
    return Response.json(
      {
        success: false,
        error: 'Ülke adı 2–100 karakter olmalıdır.',
      },
      { status: 400 }
    )
  }

  if (!/^[A-Z]{2}$/.test(isoCode)) {
    return Response.json(
      {
        success: false,
        error: 'Ülke kodu iki harfli ISO kodu olmalıdır.',
      },
      { status: 400 }
    )
  }

  try {
    const existingCountry = await context.env.DB.prepare(
      `
        SELECT id, name, iso_code, is_active
        FROM countries
        WHERE iso_code = ?
      `
    )
      .bind(isoCode)
      .first<Country>()

    if (existingCountry) {
      return Response.json(
        {
          success: false,
          error:
            existingCountry.is_active === 1
              ? 'Bu ülke zaten kayıtlı.'
              : 'Bu ülke pasif durumda kayıtlı. Yeniden aktifleştirin.',
        },
        { status: 409 }
      )
    }

    const insertResult = await context.env.DB.prepare(
      `
        INSERT INTO countries (name, iso_code, is_active)
        VALUES (?, ?, 1)
      `
    )
      .bind(name, isoCode)
      .run()

    const country = await context.env.DB.prepare(
      `
        SELECT id, name, iso_code, is_active
        FROM countries
        WHERE id = ?
      `
    )
      .bind(insertResult.meta.last_row_id)
      .first<Country>()

    return Response.json(
      { success: true, country },
      { status: 201 }
    )
  } catch (error) {
    console.error('Country could not be created:', error)

    return Response.json(
      { success: false, error: 'Ülke eklenemedi.' },
      { status: 500 }
    )
  }
}