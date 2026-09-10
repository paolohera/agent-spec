# AgentSpec Manifest

name: AgentSpec
version: 1.2.1
purpose: Reusable AI software engineering specification with project initialization, stack detection, conflict resolution, and modular engineering skills.

## Components

- core
- skills
- workflows
- checklists
- templates
- project context

## Compatible runtimes

- OpenCode
- Claude-compatible coding agents
- other repository-instruction-aware coding agents

## Core principles

- inspect before modifying
- understand existing architecture
- distinguish user requirements from implementation guidance
- reuse before creating when reuse satisfies the requirement
- minimize unnecessary changes
- preserve security, privacy, and data integrity
- verify behavior
- never claim unverified work is verified
- state unknowns instead of inventing facts

## Conflict resolution

AgentSpec treats safety and security as hard constraints, explicit user requirements as the primary source of desired outcome, and skills/workflows/checklists as execution guidance.

## Project context

Project-specific information belongs under:

```text
.agents/context/
```

The reusable framework must remain generic.
