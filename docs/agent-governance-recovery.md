# Agent Governance Recovery

Use this guide when assistant governance files (copilot instructions, rules, skills, agents, or `CLAUDE.md`) have been corrupted, partially overwritten, or drifted out of sync.

## Primary: prevent damage

Before another AI tool or bulk refactor touches governance files:

1. **Commit or stash** current work.
2. Edit **both mirrors** in one change (`.github/skills` ↔ `.cursor/skills`, `.github/agents` ↔ `.cursor/agents`).
3. Prefer **small scoped diffs** over mass rewrites.
4. Rely on CI: `ci-skills-parity.yml`, `ci-agent-docs-guard.yml`.

## Secondary: restore from Git

If damage already happened, restore the governance bundle from a known-good commit:

```powershell
# Inspect recent commits touching governance
git log --oneline -- .github/copilot-instructions.md .cursor/rules CLAUDE.md .github/skills .cursor/skills .github/agents .cursor/agents

# Restore specific paths from a good commit (replace COMMIT with hash)
git checkout COMMIT -- .github/copilot-instructions.md CLAUDE.md AGENTS.md .cursor/rules .github/skills .cursor/skills .github/agents .cursor/agents .cursor/skills.md
```

After restore:

1. Verify mirror parity locally (see `.github/skills/README.md`).
2. Re-apply any intentional customizations that were lost.
3. Run markdownlint on agent docs paths if CI is available.

## Files in the governance bundle

- `.github/copilot-instructions.md` — canonical assistant rules
- `CLAUDE.md`, `AGENTS.md` — entry points
- `.cursor/rules/*.mdc` — always-on Cursor rules
- `.github/skills/**`, `.cursor/skills/**` — bundled skills
- `.github/agents/**`, `.cursor/agents/**` — subagents
- `.cursor/skills.md` — skills index

## Related

- `docs/agent-skills.md`
- `docs/agent-subagents.md`
