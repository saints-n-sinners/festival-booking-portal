/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

interface CountResult {
  total: number
}

async function getCount(
  env: Env,
  query: string
): Promise<number> {
  const result = await env.DB.prepare(query)
    .first<CountResult>()

  return result?.total ?? 0
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
      {
        success: false,
        error: 'Oturum gerekli.',
      },
      { status: 401 }
    )
  }

  const [
    festivalCount,
    countryCount,
    urgentApplicationCount,
    completedApplicationCount,
    activeApplicationCount,
  ] = await Promise.all([
    getCount(
      context.env,
      `
        SELECT COUNT(*) AS total
        FROM festivals
      `
    ),

    getCount(
      context.env,
      `
        SELECT COUNT(*) AS total
        FROM countries
        WHERE is_active = 1
      `
    ),

    getCount(
      context.env,
      `
        SELECT COUNT(*) AS total
        FROM applications
        WHERE follow_up_date IS NOT NULL
          AND date(follow_up_date) <= date('now', '+14 days')
          AND status NOT IN (
            'accepted',
            'declined',
            'closed'
          )
      `
    ),

    getCount(
      context.env,
      `
        SELECT COUNT(*) AS total
        FROM applications
        WHERE status IN (
          'accepted',
          'declined',
          'closed'
        )
      `
    ),

    getCount(
      context.env,
      `
        SELECT COUNT(*) AS total
        FROM applications
        WHERE status IN (
          'preparing',
          'contacted',
          'follow_up',
          'negotiating'
        )
      `
    ),
  ])

  return Response.json(
    {
      success: true,
      metrics: {
        festivals: festivalCount,
        countries: countryCount,
        urgent_applications: urgentApplicationCount,
        completed_applications: completedApplicationCount,
        active_applications: activeApplicationCount,
      },
    },
    {
      headers: {
        'Cache-Control': 'no-store',
      },
    }
  )
}