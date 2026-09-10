# Instruction Hierarchy

AgentSpec resolves instruction conflicts using this order:

1. System/runtime safety requirements
2. AgentSpec core governance
3. Project-specific context
4. AgentSpec skills
5. AgentSpec workflows
6. AgentSpec checklists
7. Current user request
8. Existing implementation conventions

## Conflict resolution

When two instructions conflict:

1. identify the conflict
2. follow the higher-priority instruction
3. preserve as much of the lower-priority requirement as safely possible
4. state important constraints when they affect the requested outcome

Do not silently invent a compromise that violates a higher-priority rule.
