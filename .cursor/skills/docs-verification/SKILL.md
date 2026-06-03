---
name: docs-verification
description: Verify markdown structure, four-layer topic companions, folder naming, beginner-friendly explanations, and real-world use-case grounding. Use when auditing docs, broken links, or cross-layer consistency.
---

# Documentation Verification — WebRTC Engineering

**Four-layer** companions are organized by topic under `src/NN-category/topic-name/` with four subfolders: `01-notes/`, `02-exercises/`, `03-implementations/`, `04-discussions/`.

## Verification matrix

| Concern | Source of truth | Common errors |
|--------|-----------------|---------------|
| Layout | `docs/01-repository-structure.md`, `README.md` | Missing layer for a topic; wrong subfolder name |
| Notes | `01-notes/` | Instructor tone; concepts without intuition before protocol detail |
| Exercises | `02-exercises/` | Marked answers inconsistent with explanations; copied institution questions |
| Implementations | `03-implementations/` | Broken demo; missing README; hardcoded TURN credentials |
| Discussions | `04-discussions/` | Copied institution scenarios; missing original synthesis |
| Public docs | `.cursor/rules/06_source_material_rules.mdc` | Listing internal-only paths in `README.md`, `docs/**/*.md`, or structure diagrams |
| Diagrams | `.cursor/rules/01_educational-content-rules.mdc` | Mermaid diagram missing an ASCII fallback where a visual explanation is applicable |
| Category/topic folders | `01-fundamentals/media-streams/`, etc. | Wrong casing; content in wrong category |

## Archive handling

- `.archive/` is preserved legacy content and is not part of active docs parity unless Swamy asks for migration.
- Do not require archive content to appear in active `src/` topic modules during ordinary documentation audits.

## Output format

Use a table: **File | Status | Issues**. Concrete paths only; offer fixes when requested.

When noting teaching issues, explain them in beginner-friendly terms and mention when a missing real-world use case weakens the explanation.
When noting diagram issues, mention whether a Mermaid diagram needs an ASCII fallback for environments that do not render Mermaid.
