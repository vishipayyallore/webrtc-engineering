# `.claude/` — optional Claude Code extras

Optional **Claude Code** runtime add-ons beside the repo's main agent layout.

## Canonical layout (do not duplicate here)

| Need | Use this |
|------|----------|
| Always-on rules | `.github/copilot-instructions.md`, `.cursor/rules/` |
| Repeatable procedures | `.github/skills/` ↔ `.cursor/skills/` |
| Delegated audits | `.cursor/agents/` ↔ `.github/agents/` |
| Entry + map | Root **`CLAUDE.md`** |

## This repo

**WebRTC demo applications** under `src/NN-category/demo-name/` — each with README, code, optional `package.json`. Reference notes in `docs/`. Not a four-layer courseware repo.

Prefer Mermaid diagrams with ASCII fallbacks where a visual helps.
