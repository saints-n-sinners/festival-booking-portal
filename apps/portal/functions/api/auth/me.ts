/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../../_lib/auth'

export const onRequestGet: PagesFunction<Env> = async (context) => {
  const user = await getCurrentUser(
    context.request,
    context.env
  )

  if (!user) {
    return Response.json(
      {
        success: false,
        authenticated: false,
      },
      {
        status: 401,
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  }

  return Response.json(
    {
      success: true,
      authenticated: true,
      user,
    },
    {
      headers: {
        'Cache-Control': 'no-store',
      },
    }
  )
}