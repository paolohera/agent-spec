# Conflict Resolution Example

This example documents the intended behavior of AgentSpec when an engineering guideline conflicts with an explicit user requirement.

## Scenario

An existing function `createThing()` can perform behavior similar to a new function the user explicitly requested as `createThingNew()`.

A workflow recommends reuse.

## Expected behavior

The agent should:

1. Inspect `createThing()` and the surrounding architecture.
2. Determine whether reuse actually satisfies the user's requirement.
3. If the user explicitly requires a distinct function and no higher-order constraint prevents it, follow the user's requirement.
4. Explain duplication and maintenance trade-offs when relevant.
5. Refuse or redirect only when a genuine safety, security, privacy, data-integrity, or explicit project constraint requires doing so.

## Principle

A workflow tells the agent **how to investigate and execute** the task. It does not automatically decide **what outcome the user is allowed to request**.
