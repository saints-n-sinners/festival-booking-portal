/// <reference types="@cloudflare/workers-types" />

import {
  createExpiredSessionCookie,
  deleteCurrentSession,
  type Env,
} from '../../_lib/auth'

export const onRequestPost: PagesFunction<Env> = async (context) => {
  await deleteCurrentSession(
    context.request,
    context.env
  )

  return Response.json(
    { success: true },
    {
      headers: {
        'Cache-Control': 'no-store',
        'Set-Cookie': createExpiredSessionCookie(),
      },
    }
  )
}