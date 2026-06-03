# Agent skills (canonical)

This directory is the **source of truth** for bundled agent skills used with Cursor and GitHub Copilot (see `.github/copilot-instructions.md`).

## Mirror

`.cursor/skills/` must stay **identical** to `.github/skills/` (same paths, same `SKILL.md` and `README.md` bytes).

## Bundled skills

| Folder | Purpose |
|--------|---------|
| `webrtc-engineering` | Domain context — WebRTC demo applications |
| `ci-checks` | Local commands aligned with `ci-node.yml` and `ci-documentation.yml` |
| `docs-verification` | Markdown and demo README checks vs `docs/01-repository-structure.md` |
| `workspace-review` | Full audit checklist for this repo |
| `e2e-testing` | Smoke checks (env, lint, optional demo run) |

**CI:** Pushes that touch skills run `.github/workflows/ci-skills-parity.yml`; agent docs changes also run `.github/workflows/ci-agent-docs-guard.yml`.
