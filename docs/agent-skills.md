# Agent Skills (`SKILL.md`)

This repository uses **bundled agent skills** — Markdown files with YAML frontmatter that describe when and how to run repeatable procedures.

## Layout

| Location | Role |
|----------|------|
| `.github/skills/` | **Canonical** skill definitions |
| `.cursor/skills/` | **Mirror** — must stay byte-identical to `.github/skills/` |

Each skill lives in its own folder with a `SKILL.md` file, for example `.github/skills/ci-checks/SKILL.md`.

## Progressive disclosure

Skills complement always-on rules (`.cursor/rules/`, `.github/copilot-instructions.md`) by loading **only when relevant**:

1. Agent reads skill **name** and **description** from frontmatter to decide whether to load the body.
2. Full procedure steps live in the Markdown body.

This keeps the default context small while allowing deep playbooks on demand.

## Bundled skills (this repo)

| Skill | Purpose |
|-------|---------|
| `webrtc-engineering` | Domain context — WebRTC topic modules and teaching style |
| `topic-companions` | Four-layer topic SOP, migration, definition of done |
| `ci-checks` | Local CI commands (Python tools lint, markdownlint, Lychee) |
| `docs-verification` | Markdown and four-layer consistency audit |
| `workspace-review` | Full workspace audit checklist |
| `e2e-testing` | Smoke verification after content or demo changes |

## Mirror parity

When editing skills, update **both** `.github/skills/` and `.cursor/skills/` in the **same commit**. CI workflow `ci-skills-parity.yml` enforces this on push.

## Related

- `.cursor/skills.md` — quick index for Cursor
- `CLAUDE.md` — entry point with pointers to skills
- `docs/agent-subagents.md` — delegated audit subagents
