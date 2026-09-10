# Development Rules

## General

- Preserve existing functionality unless change is explicitly requested.
- Prefer existing architecture and conventions.
- Avoid unnecessary rewrites.
- Avoid duplicate implementations when existing functionality satisfies the requirement; a distinct implementation may be appropriate when the requirement explicitly calls for it or existing functionality cannot satisfy it.
- Avoid unnecessary dependencies.
- Keep changes focused.
- Keep code maintainable.
- Prefer clear names over clever abstractions.

## TypeScript

- Prefer strong types.
- Avoid unnecessary `any`.
- Do not use `@ts-ignore` as a shortcut for unresolved problems.
- Preserve existing type conventions.

## React / Next.js

- Inspect the current application structure before changing it.
- Preserve server/client boundaries.
- Reuse existing components and patterns when they satisfy the requested behavior; do not let reuse guidance silently override an explicit requirement for distinct behavior.
- Avoid unnecessary global state.
- Consider server-side and client-side data flow.

## Vue

- Inspect the existing component and composable patterns.
- Reuse established state-management and data-access patterns.
- Avoid creating parallel implementations when existing behavior satisfies the requirement; if a separate implementation is explicitly required, investigate the trade-offs and follow the requirement unless a higher-order constraint prevents it.

## Tailwind / CSS

- Reuse the project's established visual patterns.
- Avoid arbitrary one-off styles when an existing token or utility pattern exists.
- Verify responsive behavior.

## Backend / APIs

- Preserve API contracts unless a breaking change is intentional.
- Validate inputs.
- Handle errors explicitly.
- Do not expose privileged credentials.

## Supabase or similar hosted databases

When applicable, inspect:

- schema
- queries
- authentication
- RLS/policies
- storage
- server/client credential boundaries

Never expose service-role credentials to clients.

## Errors and states

Consider:

- loading
- success
- empty
- validation failure
- authorization failure
- network failure
- unexpected failure

## Accessibility

Consider:

- keyboard access
- labels
- semantic elements
- focus states
- readable contrast
- meaningful error messages

## Git

Do not overwrite unrelated user changes.
