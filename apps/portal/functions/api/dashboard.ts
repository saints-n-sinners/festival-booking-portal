/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

interface CountResult {
  total: number
}

interface UpcomingAction {
  application_id: number
  festival_name: string
  city: string
  country: string
  status: string
  priority: string
  follow_up_date: string
  next_action: string
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

  try {
    const [
      festivalCount,
      countryCount,
      urgentApplicationCount,
      completedApplicationCount,
      activeApplicationCount,
      upcomingActionsResult,
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

      context.env.DB.prepare(
        `
          SELECT
            applications.id AS application_id,
            festivals.name AS festival_name,
            festivals.city,
            countries.name AS country,
            applications.status,
            applications.priority,
            applications.follow_up_date,
            applications.next_action

          FROM applications

          INNER JOIN festival_editions
            ON festival_editions.id =
              applications.festival_edition_id

          INNER JOIN festivals
            ON festivals.id =
              festival_editions.festival_id

          INNER JOIN countries
            ON countries.id = festivals.country_id

          WHERE festivals.is_active = 1
            AND applications.follow_up_date IS NOT NULL
            AND applications.next_action IS NOT NULL
            AND applications.next_action != ''
            AND applications.status NOT IN (
              'accepted',
              'declined',
              'closed'
            )

          ORDER BY
            CASE
              WHEN date(applications.follow_up_date) <
                date('now')
              THEN 0
              ELSE 1
            END,
            date(applications.follow_up_date) ASC,
            CASE applications.priority
              WHEN 'A' THEN 1
              WHEN 'B' THEN 2
              WHEN 'C' THEN 3
              WHEN 'D' THEN 4
              ELSE 5
            END,
            festivals.name ASC

          LIMIT 5
        `
      ).all<UpcomingAction>(),
    ])

    return Response.json(
      {
        success: true,
        metrics: {
          festivals: festivalCount,
          countries: countryCount,
          urgent_applications:
            urgentApplicationCount,
          completed_applications:
            completedApplicationCount,
          active_applications:
            activeApplicationCount,
        },
        upcoming_actions:
          upcomingActionsResult.results,
      },
      {
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  } catch (error) {
    console.error(
      'Dashboard data could not be loaded:',
      error
    )

    return Response.json(
      {
        success: false,
        error: 'Dashboard verileri yüklenemedi.',
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