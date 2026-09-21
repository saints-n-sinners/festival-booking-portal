/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../_lib/auth'

const validStatuses = new Set([
  'not_started',
  'preparing',
  'contacted',
  'follow_up',
  'negotiating',
  'accepted',
  'declined',
  'closed',
])

const validPriorities = new Set([
  'A',
  'B',
  'C',
  'D',
])

interface ApplicationRecord {
  id: number
  status: string
  priority: string
  assigned_to: string | null
  follow_up_date: string | null
  notes: string | null
  next_action: string | null
  response_text: string | null
}

interface UpdateBody {
  status?: unknown
  priority?: unknown
  assigned_to?: unknown
  follow_up_date?: unknown
  notes?: unknown
  next_action?: unknown
  response_text?: unknown
}

function validNullableText(
  value: unknown,
  maximumLength: number
): value is string | null {
  return (
    value === null ||
    (
      typeof value === 'string' &&
      value.length <= maximumLength
    )
  )
}

function validNullableDate(
  value: unknown
): value is string | null {
  return (
    value === null ||
    (
      typeof value === 'string' &&
      /^\d{4}-\d{2}-\d{2}$/.test(value)
    )
  )
}

export const onRequestPatch: PagesFunction<Env> = async (
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

  let body: UpdateBody

  try {
    body =
      (await context.request.json()) as UpdateBody
  } catch {
    return Response.json(
      {
        success: false,
        error: 'Geçersiz istek.',
      },
      { status: 400 }
    )
  }

  const currentApplication =
    await context.env.DB.prepare(
      `
        SELECT
          id,
          status,
          priority,
          assigned_to,
          follow_up_date,
          notes,
          next_action,
          response_text
        FROM applications
        WHERE id = ?
      `
    )
      .bind(id)
      .first<ApplicationRecord>()

  if (!currentApplication) {
    return Response.json(
      {
        success: false,
        error: 'Başvuru bulunamadı.',
      },
      { status: 404 }
    )
  }

  const assignments: string[] = []
  const values: Array<string | number | null> = []
  const changes: Record<string, unknown> = {}

  if (body.status !== undefined) {
    if (
      typeof body.status !== 'string' ||
      !validStatuses.has(body.status)
    ) {
      return Response.json(
        {
          success: false,
          error: 'Geçersiz başvuru durumu.',
        },
        { status: 400 }
      )
    }

    assignments.push('status = ?')
    values.push(body.status)
    changes.status = {
      from: currentApplication.status,
      to: body.status,
    }

    if (
      ['contacted', 'follow_up', 'negotiating']
        .includes(body.status)
    ) {
      assignments.push(
        'submitted_at = COALESCE(submitted_at, CURRENT_TIMESTAMP)'
      )
    }
  }

  if (body.priority !== undefined) {
    if (
      typeof body.priority !== 'string' ||
      !validPriorities.has(body.priority)
    ) {
      return Response.json(
        {
          success: false,
          error: 'Geçersiz öncelik.',
        },
        { status: 400 }
      )
    }

    assignments.push('priority = ?')
    values.push(body.priority)
    changes.priority = {
      from: currentApplication.priority,
      to: body.priority,
    }
  }

  if (body.assigned_to !== undefined) {
    if (!validNullableText(body.assigned_to, 100)) {
      return Response.json(
        {
          success: false,
          error: 'Sorumlu bilgisi geçersiz.',
        },
        { status: 400 }
      )
    }

    const assignedTo =
      body.assigned_to?.trim() || null

    assignments.push('assigned_to = ?')
    values.push(assignedTo)
    changes.assigned_to = assignedTo
  }

  if (body.follow_up_date !== undefined) {
    if (!validNullableDate(body.follow_up_date)) {
      return Response.json(
        {
          success: false,
          error: 'Takip tarihi geçersiz.',
        },
        { status: 400 }
      )
    }

    assignments.push('follow_up_date = ?')
    values.push(body.follow_up_date)
    changes.follow_up_date = body.follow_up_date
  }

  if (body.notes !== undefined) {
    if (!validNullableText(body.notes, 5000)) {
      return Response.json(
        {
          success: false,
          error: 'Not alanı çok uzun.',
        },
        { status: 400 }
      )
    }

    const notes = body.notes?.trim() || null

    assignments.push('notes = ?')
    values.push(notes)
    changes.notes = notes
  }

  if (body.next_action !== undefined) {
    if (!validNullableText(body.next_action, 1000)) {
      return Response.json(
        {
          success: false,
          error: 'Sonraki aksiyon alanı çok uzun.',
        },
        { status: 400 }
      )
    }

    const nextAction =
      body.next_action?.trim() || null

    assignments.push('next_action = ?')
    values.push(nextAction)
    changes.next_action = nextAction
  }

  if (body.response_text !== undefined) {
    if (!validNullableText(body.response_text, 2000)) {
      return Response.json(
        {
          success: false,
          error: 'Yanıt alanı çok uzun.',
        },
        { status: 400 }
      )
    }

    const responseText =
      body.response_text?.trim() || null

    assignments.push('response_text = ?')
    values.push(responseText)
    changes.response_text = responseText
  }

  if (assignments.length === 0) {
    return Response.json(
      {
        success: false,
        error: 'Güncellenecek alan bulunamadı.',
      },
      { status: 400 }
    )
  }

  assignments.push('updated_at = CURRENT_TIMESTAMP')
  values.push(id)

  await context.env.DB.prepare(
    `
      UPDATE applications
      SET ${assignments.join(', ')}
      WHERE id = ?
    `
  )
    .bind(...values)
    .run()

  await context.env.DB.prepare(
    `
      INSERT INTO application_actions (
        application_id,
        action_type,
        performed_by,
        details
      )
      VALUES (?, ?, ?, ?)
    `
  )
    .bind(
      id,
      'application_updated',
      currentUser.email,
      JSON.stringify(changes)
    )
    .run()

  const updatedApplication =
    await context.env.DB.prepare(
      `
        SELECT *
        FROM applications
        WHERE id = ?
      `
    )
      .bind(id)
      .first()

  return Response.json(
    {
      success: true,
      application: updatedApplication,
    },
    {
      headers: {
        'Cache-Control': 'no-store',
      },
    }
  )
}