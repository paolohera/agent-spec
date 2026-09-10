# Changelog

## 1.2.0

- Corrected the instruction hierarchy so legitimate explicit user requirements are not automatically overridden by workflows, checklists, or engineering guidelines.
- Added explicit WHAT-vs-HOW guidance for separating desired outcomes from implementation methods.
- Added a formal conflict-resolution procedure with safety, security, project-constraint, and user-requirement handling.
- Clarified the meaning of "reuse before creating" so reuse is preferred when it satisfies requirements rather than being an absolute prohibition.
- Added the `seo.md` development skill covering technical SEO, metadata, crawlability, structured data, performance, local SEO, international SEO, and verification.
- Updated manifest and documentation version to 1.2.0.

## 1.1.0

- Added project initialization workflow.
- Added PowerShell project stack detection.
- Added safe creation of project-specific `.agents/context/` files.
- Added detected stack context without reading environment secrets.
- Added `-Force` and `-SkipDetection` initializer controls.
- Updated documentation and manifest.

## 1.0.0

- Initial reusable AgentSpec framework.
