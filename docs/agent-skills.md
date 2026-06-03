# Agent Skills (`SKILL.md`)

Bundled agent skills — Markdown files with YAML frontmatter for repeatable procedures.

## Bundled skills (this repo)

| Skill | Purpose |
|-------|---------|
| `webrtc-engineering` | Domain context — WebRTC demo applications |
| `ci-checks` | Local CI commands (TypeScript, ESLint, Prettier, markdownlint, Lychee) |
| `docs-verification` | Markdown and demo documentation audit |
| `workspace-review` | Full workspace audit checklist |
| `e2e-testing` | Smoke verification after demo or doc changes |

## Mirror parity

When editing skills, update **both** `.github/skills/` and `.cursor/skills/` in the **same commit**.

## Related

- `.cursor/skills.md` — quick index for Cursor
- `docs/agent-subagents.md` — delegated audit subagents
