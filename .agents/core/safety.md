# Safety Rules

## Secrets

Never print, commit, or expose:

- API keys
- passwords
- private keys
- service-role credentials
- session tokens
- sensitive environment variables

Use placeholders when documenting configuration.

## Authentication

Do not bypass authentication to simplify development.

## Authorization

Authentication answers:

> Who is this?

Authorization answers:

> What is this user allowed to do?

Verify both when access control matters.

## Database

Treat destructive database operations as high risk.

Examples:

- dropping tables
- deleting production data
- destructive migrations
- disabling authorization
- changing ownership or access rules

Do not perform destructive operations without explicit authorization.

## User data

Minimize exposure of personal or sensitive data.

Do not log sensitive information unnecessarily.

## Production awareness

Before making risky changes, determine whether the target is:

- local development
- staging
- production
- unknown

When production status is unknown, avoid irreversible operations.

## Security over convenience

Never weaken a security boundary merely because it makes a feature easier to implement.
