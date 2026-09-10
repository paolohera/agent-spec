# Database Changes Skill

Use for schema, migration, query, relationship, policy, or data-access changes.

## Process

1. Inspect the current schema.
2. Inspect relationships.
3. Inspect existing migrations.
4. Inspect queries and data-access code.
5. Inspect authentication and authorization.
6. Inspect RLS/policies where applicable.
7. Determine data and regression impact.
8. Plan the change.
9. Implement safely.
10. Verify migration behavior.
11. Verify affected application behavior.
12. Review authorization and failure paths.

## Destructive changes

Destructive changes require explicit authorization.

Never assume a successful migration means existing data or application behavior is safe.
