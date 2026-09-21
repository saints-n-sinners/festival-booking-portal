/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../../_lib/auth'

interface ApplicationRecord {
  id: number
}

interface ApplicationActionRecord {
  id: number
  application_id: number
  action_type: string
  performed_by: string | null
  details: string | null
  created_at: string
}

export const onRequestGet: PagesFunction<Env> = async (
  context
) => {
  const id = Number.parseInt(
    context.params.id as string,
    10
  )

  if (!Number.isInteger(id) || id <= 0) {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz başvuru numarası.',
      },
      { status: 400 }
    )
  }

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

  const application =
    await context.env.DB.prepare(
      `
        SELECT id
        FROM applications
        WHERE id = ?
      `
    )
      .bind(id)
      .first<ApplicationRecord>()

  if (!application) {
    return Response.json(
      {
        success: false,
        error: 'Başvuru bulunamadı.',
      },
      { status: 404 }
    )
  }

  const result =
    await context.env.DB.prepare(
      `
        SELECT
          id,
          application_id,
          action_type,
          performed_by,
          details,
          created_at
        FROM application_actions
        WHERE application_id = ?
        ORDER BY created_at DESC, id DESC
      `
    )
      .bind(id)
      .all<ApplicationActionRecord>()

  const actions = result.results.map((action) => {
    let parsedDetails: unknown = null

    if (action.details) {
      try {
        parsedDetails = JSON.parse(action.details)
      } catch {
        parsedDetails = action.details
      }
    }

    return {
      ...action,
      details: parsedDetails,
    }
  })

  return Response.json(
    {
      success: true,
      application_id: id,
      actions,
    },
    {
      headers: {
        'Cache-Control': 'no-store',
      },
    }
  )
}