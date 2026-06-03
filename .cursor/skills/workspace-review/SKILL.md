---
name: workspace-review
description: Comprehensive workspace review for ML Algorithms from Scratch — structure, zero-copy, CI, four-layer companions, source-material hygiene, beginner-friendly teaching quality, and business-use-case grounding.
---

# Workspace Review — ML Algorithms from Scratch

## Protocol

1. Read `.github/copilot-instructions.md` (four-layer model, zero-copy, `source-material/` read-only — never listed in public `README.md` or `docs/`).
2. Compare the tree to `docs/01_repository-structure.md` and `README.md`.
3. Python: `uv sync` at repo root; `uv run …` per `pyproject.toml` / CI.
4. **Zero-copy:** original synthesis in public folders (`src/weekN/01-notes/`, `src/weekN/02-quizzes/`, `src/weekN/03-notebooks/`, `src/weekN/04-discussions/`).
5. **Four-layer parity:** for each active week, confirm `01-notes/`, `02-quizzes/`, `03-notebooks/`, and `04-discussions/` subfolders exist under `src/weekN/`.
6. **Concept-first prose:** spot-check reading notes and notebook Markdown cells that introduce algorithms before code.
7. **Teaching clarity:** confirm important concepts are explained in layman language and stay beginner friendly.
8. **Business grounding:** confirm realistic business use cases are present where they help the topic feel concrete.
9. **Diagram accessibility:** confirm Mermaid diagrams include ASCII fallbacks wherever a visual explanation is applicable.
10. Run the **ci-checks** skill (Python + notebook JSON + markdownlint + optional Lychee).
11. Optionally run **docs-verification**.
12. **Skills parity:** `.github/skills/**` ↔ `.cursor/skills/**` byte-identical — see `.github/skills/README.md`.
13. **Agents parity:** `.github/agents/**` ↔ `.cursor/agents/**` byte-identical.

## Archive handling

- `.archive/` is preserved old category-based content; do not flag it as stale active content unless Swamy asks to migrate it.
- `source-material/.archive/` is preserved raw/reference algorithm material; keep it read-only and do not count it as an automatic migration gap.
- Reviews should focus on active `src/weekN/` bundles plus governance/tooling consistency.

## Output

Critical / Major / Minor findings; CI summary; doc accuracy notes.

**Governance integrity (primary):** do not bulk-edit copilot, rules, skills, or agents without commits and mirror-safe diffs. If trees are **already** clearly corrupted, **then** use **`docs/agent-governance-recovery.md`** (secondary: Git restore) before continuing the review.
