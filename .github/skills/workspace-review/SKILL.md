---
name: workspace-review
description: Comprehensive workspace review for WebRTC Engineering — structure, zero-copy, CI, demo apps, source-material hygiene, and documentation quality.
---

# Workspace Review — WebRTC Engineering

## Protocol

1. Read `.github/copilot-instructions.md` (demo layout, zero-copy, internal-only source material — never listed in public `README.md` or `docs/`).
2. Compare the tree to `docs/01-repository-structure.md` and `README.md`.
3. Node.js: `npm ci` at repo root; `npm run check` per CI.
4. **Zero-copy:** original synthesis in public demo READMEs, `docs/`, and comments — not pasted course material.
5. **Demo completeness:** for each active demo, confirm README with purpose and run steps; code runs as documented.
6. **Diagram accessibility:** Mermaid diagrams include ASCII fallbacks where applicable.
7. Run the **ci-checks** skill (TypeScript + ESLint + Prettier + markdownlint + optional Lychee).
8. Optionally run **docs-verification**.
9. **Skills parity:** `.github/skills/**` ↔ `.cursor/skills/**` byte-identical.
10. **Agents parity:** `.github/agents/**` ↔ `.cursor/agents/**` byte-identical.

## Archive handling

- `.archive/` is legacy tooling and old content; do not flag as stale active content unless Swamy asks to migrate it.
- Reviews should focus on `src/06_demos/`, `src/08_projects/`, and governance/tooling consistency with `docs/01-repository-structure.md`.

## Output

Critical / Major / Minor findings; CI summary; doc accuracy notes.

**Governance integrity (primary):** do not bulk-edit copilot, rules, skills, or agents without commits and mirror-safe diffs. If trees are **already** clearly corrupted, use **`docs/agent-governance-recovery.md`** before continuing.
