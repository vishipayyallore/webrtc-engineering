---
name: workspace-review
description: Comprehensive workspace review for WebRTC Engineering — structure, zero-copy, CI, four-layer topic companions, source-material hygiene, beginner-friendly teaching quality, and real-world use-case grounding.
---

# Workspace Review — WebRTC Engineering

## Protocol

1. Read `.github/copilot-instructions.md` (four-layer model, zero-copy, internal-only source material — never listed in public `README.md` or `docs/`).
2. Compare the tree to `docs/01-repository-structure.md` and `README.md`.
3. Node.js: `npm ci` at repo root; `npm run check` per CI.
4. **Zero-copy:** original synthesis in public folders (`src/**/01-notes/`, `02-exercises/`, `03-implementations/`, `04-discussions/`).
5. **Four-layer parity:** for each active topic, confirm all four subfolders exist.
6. **Concept-first prose:** spot-check reading notes and implementation READMEs that introduce WebRTC concepts before code.
7. **Teaching clarity:** confirm important concepts are explained in layman language and stay beginner friendly.
8. **Real-world grounding:** confirm realistic use cases are present where they help the topic feel concrete.
9. **Diagram accessibility:** confirm Mermaid diagrams include ASCII fallbacks wherever a visual explanation is applicable.
10. Run the **ci-checks** skill (TypeScript + ESLint + Prettier + markdownlint + optional Lychee).
11. Optionally run **docs-verification**.
12. **Skills parity:** `.github/skills/**` ↔ `.cursor/skills/**` byte-identical — see `.github/skills/README.md`.
13. **Agents parity:** `.github/agents/**` ↔ `.cursor/agents/**` byte-identical.

## Archive handling

- `.archive/` contains legacy tooling (including optional Python converters) and old content; do not flag it as stale active content unless Swamy asks to migrate it.
- Reviews should focus on active `src/` topic modules plus governance/tooling consistency.

## Output

Critical / Major / Minor findings; CI summary; doc accuracy notes.

**Governance integrity (primary):** do not bulk-edit copilot, rules, skills, or agents without commits and mirror-safe diffs. If trees are **already** clearly corrupted, **then** use **`docs/agent-governance-recovery.md`** (secondary: Git restore) before continuing the review.
