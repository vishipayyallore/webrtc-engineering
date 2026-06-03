# Agent Subagents

Custom **subagents** are Markdown files with YAML frontmatter that Cursor uses for delegated tasks with a fresh context window.

## Layout

| Location | Role |
|----------|------|
| `.cursor/agents/` | **Primary** location Cursor reads |
| `.github/agents/` | **Mirror** — must stay byte-identical to `.cursor/agents/` |

## Subagents (this repo)

| Subagent | Purpose |
|----------|---------|
| `webrtc-ci-verify` | Run CI-aligned checks locally (Python tools lint, markdownlint) |
| `webrtc-topic-bundle-review` | Audit one topic module for four-layer parity and teaching quality |
| `webrtc-zero-copy-review` | Spot-check paths for zero-copy / synthesis risk |

## Invocation

- Natural language: "use the webrtc-ci-verify subagent"
- Slash command when supported: `/webrtc-ci-verify`

## Mirror parity

When editing subagents, update **both** `.cursor/agents/` and `.github/agents/` in the **same commit**. CI workflow `ci-agent-docs-guard.yml` validates required files and mirror parity.

## Related

- `docs/agent-skills.md` — bundled skills (procedures)
- `CLAUDE.md` — entry point with subagent pointers
- `.github/copilot-instructions.md` — canonical assistant rules
