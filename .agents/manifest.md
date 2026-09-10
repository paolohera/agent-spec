# AgentSpec Manifest

name: AgentSpec
version: 1.1.0
purpose: Reusable AI software engineering specification with project initialization and stack detection.

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
- reuse before creating
- minimize unnecessary changes
- preserve security and data integrity
- verify behavior
- never claim unverified work is verified

## Project context

Project-specific information belongs under:

```text
.agents/context/
```

The reusable framework must remain generic.
