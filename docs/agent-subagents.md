# Agent Subagents

Custom **subagents** for delegated tasks with a fresh context window.

## Subagents (this repo)

| Subagent | Purpose |
|----------|---------|
| `webrtc-ci-verify` | Run CI-aligned checks locally (TypeScript, ESLint, Prettier, markdownlint) |
| `webrtc-demo-review` | Audit one demo folder under `src/` for README, run steps, and technical accuracy |
| `webrtc-zero-copy-review` | Spot-check paths for zero-copy / synthesis risk |

## Invocation

- Natural language: "use the webrtc-demo-review subagent"
- Slash command when supported: `/webrtc-demo-review`

## Mirror parity

Update **both** `.cursor/agents/` and `.github/agents/` in the **same commit**.
