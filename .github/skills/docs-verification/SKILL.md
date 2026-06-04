---
name: docs-verification
description: Verify markdown structure, demo folder layout, README quality, and broken links. Use when auditing docs or demo documentation consistency.
---

# Documentation Verification — WebRTC Engineering

Demos are organized under `src/06_demos/NN_name/` as self-contained applications. Concept notes live under `src/01_fundamentals/` … `src/05_architecture/`.

## Verification matrix

| Concern | Source of truth | Common errors |
|--------|-----------------|---------------|
| Layout | `docs/01-repository-structure.md`, `README.md` | Demo in wrong category; wrong folder casing |
| Demo README | `src/**/README.md` | Missing run steps; no localhost/HTTPS note; concepts without plain-English intro |
| Demo code | `src/**/` | Hardcoded TURN credentials; broken start command |
| Public docs | `.cursor/rules/06_source_material_rules.mdc` | Listing internal-only paths in `README.md` or `docs/` |
| Diagrams | `.cursor/rules/01_educational-content-rules.mdc` | Mermaid without ASCII fallback where a visual helps |
| Cross-links | Relative links between demos and `docs/` | Broken paths after renames |

## Archive handling

- `.archive/` is legacy content; not part of active docs parity unless Swamy asks for migration.

## Output format

Use a table: **File | Status | Issues**. Concrete paths only; offer fixes when requested.
