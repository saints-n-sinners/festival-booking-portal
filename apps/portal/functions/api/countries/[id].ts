/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../_lib/auth'

interface Country {
  id: number
  name: string
  iso_code: string
  is_active: number
}

interface UpdateCountryBody {
  name?: unknown
  iso_code?: unknown
  is_active?: unknown
}

export const onRequestPatch: PagesFunction<Env> = async (
  context
) => {
  const id = Number.parseInt(context.params.id as string, 10)

  if (!Number.isInteger(id) || id <= 0) {
    return Response.json(
      { success: false, error: 'Geçersiz ülke numarası.' },
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

  let body: UpdateCountryBody

  try {
    body = (await context.request.json()) as UpdateCountryBody
  } catch {
    return Response.json(
      { success: false, error: 'Geçersiz istek.' },
      { status: 400 }
    )
  }

  const currentCountry = await context.env.DB.prepare(
    `
      SELECT id, name, iso_code, is_active
      FROM countries
      WHERE id = ?
    `
  )
    .bind(id)
    .first<Country>()

  if (!currentCountry) {
    return Response.json(
      { success: false, error: 'Ülke bulunamadı.' },
      { status: 404 }
    )
  }

  const assignments: string[] = []
  const values: Array<string | number> = []

  if (body.name !== undefined) {
    const name =
      typeof body.name === 'string' ? body.name.trim() : ''

    if (name.length < 2 || name.length > 100) {
      return Response.json(
        {
          success: false,
          error: 'Ülke adı 2–100 karakter olmalıdır.',
        },
        { status: 400 }
      )
    }

    assignments.push('name = ?')
    values.push(name)
  }

  if (body.iso_code !== undefined) {
    const isoCode =
      typeof body.iso_code === 'string'
        ? body.iso_code.trim().toUpperCase()
        : ''

    if (!/^[A-Z]{2}$/.test(isoCode)) {
      return Response.json(
        {
          success: false,
          error: 'Ülke kodu iki harfli ISO kodu olmalıdır.',
        },
        { status: 400 }
      )
    }

    const duplicate = await context.env.DB.prepare(
      `
        SELECT id
        FROM countries
        WHERE iso_code = ? AND id != ?
      `
    )
      .bind(isoCode, id)
      .first<{ id: number }>()

    if (duplicate) {
      return Response.json(
        {
          success: false,
          error: 'Bu ülke kodu başka bir kayıtta kullanılıyor.',
        },
        { status: 409 }
      )
    }

    assignments.push('iso_code = ?')
    values.push(isoCode)
  }

  if (body.is_active !== undefined) {
    const isActive =
      body.is_active === true || body.is_active === 1
        ? 1
        : body.is_active === false || body.is_active === 0
          ? 0
          : null

    if (isActive === null) {
      return Response.json(
        { success: false, error: 'Geçersiz aktiflik durumu.' },
        { status: 400 }
      )
    }

    assignments.push('is_active = ?')
    values.push(isActive)
  }

  if (assignments.length === 0) {
    return Response.json(
      { success: false, error: 'Güncellenecek alan bulunamadı.' },
      { status: 400 }
    )
  }

  values.push(id)

  try {
    await context.env.DB.prepare(
      `
        UPDATE countries
        SET ${assignments.join(', ')}
        WHERE id = ?
      `
    )
      .bind(...values)
      .run()

    const country = await context.env.DB.prepare(
      `
        SELECT id, name, iso_code, is_active
        FROM countries
        WHERE id = ?
      `
    )
      .bind(id)
      .first<Country>()

    return Response.json({ success: true, country })
  } catch (error) {
    console.error('Country could not be updated:', error)

    return Response.json(
      { success: false, error: 'Ülke güncellenemedi.' },
      { status: 500 }
    )
  }
}
