# Agent instructions (index)

This repository is an Applied Engineering workspace for practical WebRTC notes,
experiments, documentation, automation, and reference implementations.

## Scope

Applies to: code changes, documentation edits, exercises, demos, and automation inside this repo. Does **not** apply to external repos, one-off shell sessions, or anything outside `d:\GitHub\webrtc-engineering\`.

## Read first

1. `README.md` — repo purpose and current structure.
2. `CLAUDE.md` — repo-level assistant entry point and key policies.
3. `.github/copilot-instructions.md` — canonical assistant rules for this repository.
4. `.cursor/rules/00_swamy_personal_learning_only.mdc` — Swamy-only scope (always apply). *Swamy-only scope: this repo is the personal learning workspace of the user Swamy (Swamy PKV); do not generalize advice, rephrase docs for a broader audience, or treat content as shared courseware.*
5. `.cursor/rules/05_primary-directives.mdc` — primary engineering directives for agent work.

### Precedence on conflict

When the files above disagree, resolve in this order (highest wins):

1. `.cursor/rules/00_swamy_personal_learning_only.mdc` (scope guardrail)
2. `.github/copilot-instructions.md` (canonical assistant rules)
3. `.cursor/rules/05_primary-directives.mdc`
4. `CLAUDE.md`
5. `README.md`

`.github/copilot-instructions.md` is **canonical** and overrides `CLAUDE.md` whenever they disagree; `CLAUDE.md` is an entry point and summary, not a source of authority.

### Missing or unreadable files

If any referenced file is missing, empty, or unreadable, proceed with the remaining files and explicitly note the missing reference in your response so Swamy can decide whether to restore it.

## Claude-specific emphasis

- `.claude/README.md` — how the optional Claude Code tree maps to repo skills and agents.

## Bundled skills

Treat `.github/skills/` as the source of truth: read and edit skill files there. `.cursor/skills/` is a byte-identical mirror — any edit to one tree must land in the other tree in the **same commit** (enforced by `ci-skills-parity`). The same rule applies to `.github/agents/` ↔ `.cursor/agents/` (enforced by `ci-agent-docs-guard`). Do not edit only one side.

## Prompts

- `.github/prompts/` contains repo-specific task and audit prompts.
