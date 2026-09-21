/// <reference types="@cloudflare/workers-types" />

interface Env {
  DB: D1Database
}

interface Country {
  id: number
  name: string
  iso_code: string
  is_active: number
}

export const onRequestGet: PagesFunction<Env> = async (context) => {
  try {
    const result = await context.env.DB.prepare(
      `SELECT id, name, iso_code, is_active
       FROM countries
       WHERE is_active = 1
       ORDER BY name`
    ).all<Country>()

    return Response.json({
      success: true,
      countries: result.results,
    })
  } catch (error) {
    console.error('Countries could not be loaded:', error)

    return Response.json(
      {
        success: false,
        error: 'Countries could not be loaded.',
      },
      { status: 500 }
    )
  }
}