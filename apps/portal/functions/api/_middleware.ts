/// <reference types="@cloudflare/workers-types" />

import {
  getCurrentUser,
  type Env,
} from '../_lib/auth'

const publicPaths = new Set([
  '/api/auth/login',
  '/api/auth/logout',
  '/api/auth/me',
])

export const onRequest: PagesFunction<Env> = async (context) => {
  const pathname = new URL(context.request.url).pathname

  if (publicPaths.has(pathname)) {
    return context.next()
  }

  const user = await getCurrentUser(
    context.request,
    context.env
  )

  if (!user) {
    return Response.json(
      {
        success: false,
        error: 'Oturum gerekli.',
      },
      {
        status: 401,
        headers: {
          'Cache-Control': 'no-store',
        },
      }
    )
  }

  return context.next()
}