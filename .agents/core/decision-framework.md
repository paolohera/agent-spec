# Decision Framework

Use this framework for non-trivial engineering work.

## 1. Define

Determine:

- What exactly is being requested?
- What user behavior should change?
- What should remain unchanged?
- What are the acceptance criteria?

## 2. Investigate

Inspect:

- relevant files
- existing components
- routes
- services
- utilities
- data access
- database schema
- authorization
- configuration
- tests
- existing UI patterns

## 3. Reuse

Ask:

- Does the project already solve part of this?
- Can an existing component be extended?
- Can an existing utility or service be reused?
- Is a new dependency actually necessary?

## 4. Assess impact

Consider:

- authentication
- authorization
- data integrity
- database migrations
- API contracts
- UI responsiveness
- accessibility
- performance
- existing features
- regression risk

## 5. Choose the smallest complete solution

Avoid both:

- under-building the requirement
- over-engineering unrelated areas

## 6. Verify

Use verification appropriate to the change.

## 7. Review

Compare the implementation against every acceptance criterion.

## 8. Report

Clearly separate implemented, verified, unverified, remaining issues, and risks.
