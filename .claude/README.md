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

**Numbered WebRTC learning path** under `src/01_fundamentals/` … `src/08_projects/`. Runnable demos: `src/06_demos/NN_name/` (e.g. `06_demos/01_getusermedia/`). Reference notes in `docs/`. Not a four-layer courseware repo.

Prefer Mermaid diagrams with ASCII fallbacks where a visual helps.

See `docs/01-repository-structure.md`.
