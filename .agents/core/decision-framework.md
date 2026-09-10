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

Reuse is a means of satisfying the requirement, not a reason to silently change the requirement. If the user explicitly requests a distinct implementation, determine whether reuse can still satisfy the acceptance criteria. If it cannot, follow the explicit requirement unless a higher-order safety, security, privacy, data-integrity, or explicit project constraint prevents it.

## 4. Resolve conflicts

If guidance conflicts with the requested outcome:

1. classify the conflicting instructions using `.agents/core/instruction-hierarchy.md`
2. identify whether the higher-priority item is a genuine constraint or implementation guidance
3. preserve the user's requested outcome whenever safely and legitimately possible
4. explain meaningful trade-offs rather than silently changing the requirement

## 5. Assess impact

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

## 6. Choose the smallest complete solution

Avoid both:

- under-building the requirement
- over-engineering unrelated areas

## 7. Verify

Use verification appropriate to the change.

## 8. Review

Compare the implementation against every acceptance criterion.

## 9. Report

Clearly separate implemented, verified, unverified, remaining issues, and risks.
