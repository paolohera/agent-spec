# AgentSpec

AgentSpec is a reusable, tool-agnostic behavioral specification for AI coding agents.

Its purpose is to give AI coding agents a consistent software-engineering discipline across projects:

- inspect before modifying
- understand existing architecture before adding code
- reuse existing functionality before creating duplicates
- make the smallest complete change
- protect authentication, authorization, secrets, and data
- verify behavior rather than treating a successful build as proof
- clearly distinguish implemented work from verified work
- keep project-specific knowledge separate from reusable engineering rules

## Design

AgentSpec separates reusable engineering behavior from project context.

```text
agent-spec/
    reusable framework
          |
          +---- initialize ----> Project A
          |
          +---- initialize ----> Project B
          |
          +---- initialize ----> Project C
```

Each project should maintain its own copy/version of the AgentSpec files so the project can evolve independently.

## Repository structure

```text
agent-spec/
├── AGENTS.md
├── CLAUDE.md
├── VERSION
├── .agents/
│   ├── manifest.md
│   ├── core/
│   ├── skills/
│   ├── workflows/
│   ├── checklists/
│   └── templates/
├── examples/
└── scripts/
```

## Using AgentSpec in a project

### Quick initialization (PowerShell)

From a checkout of this repository:

```powershell
.\scripts\init-project.ps1 -Target C:\projects\my-project
```

The initializer:

- detects common project technologies from repository files
- installs `AGENTS.md`, `CLAUDE.md`, `VERSION`, and `.agents/`
- creates project-specific context files under `.agents/context/`
- records non-secret stack detection in `.agents/context/detected-stack.md`
- does not read or copy `.env` values
- skips existing files by default

Use `-Force` only when you intentionally want to overwrite existing AgentSpec-managed files. Use `-SkipDetection` to disable stack detection.

After initialization, review the generated context and have your coding agent inspect the repository before filling in project-specific facts.

### Manual layout

A project using AgentSpec should look like this:


```text
your-project/
├── AGENTS.md
├── CLAUDE.md
├── .agents/
│   ├── core/
│   ├── skills/
│   ├── workflows/
│   ├── checklists/
│   └── context/
│       ├── project.md
│       ├── architecture.md
│       ├── database.md
│       ├── design-system.md
│       ├── permissions.md
│       └── features.md
└── source/
```

The `context/` directory is project-specific. The initializer may add structural detection, but project facts should be confirmed against the actual repository.

## Versioning

The current specification version is stored in `VERSION`. The v1.1 initializer is included under `scripts/`.

Projects should record the AgentSpec version they use in `.agents/manifest.md`.

Framework updates should be adopted intentionally and tested against the project.

## Principles

1. Existing code is evidence.
2. Requirements determine scope.
3. Security and data integrity are non-negotiable.
4. Reuse before creation.
5. Minimal changes are preferred.
6. Verification must match the risk of the change.
7. Unknowns must be stated instead of invented.
8. A passing build does not prove runtime behavior.
9. Final reports must be honest about verification status.

## Runtime compatibility

The specification is designed to work with coding agents that read repository instructions, including OpenCode and other agents supporting `AGENTS.md`-style instructions.

Runtime-specific adapters can be added later without changing the core behavioral specification.
