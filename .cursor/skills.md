# Repository skills (WebRTC Engineering)

This file is **local to `webrtc-engineering`**. It complements `.cursor/rules/*.mdc` and `.github/copilot-instructions.md` with concise guidance for assistants editing this repo.

**Strict scope:** Swamy PKV's personal learning only — see `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

**Bundled agent skills:** `.github/skills/` is canonical; `.cursor/skills/` is a **byte-identical mirror** (see `.github/skills/README.md`). Bundles: **`webrtc-engineering`**, **`topic-companions`**, **`ci-checks`**, **`docs-verification`**, **`workspace-review`**, **`e2e-testing`**. Pushes under skills paths run **`.github/workflows/ci-skills-parity.yml`**; agent-facing path changes also run **`.github/workflows/ci-agent-docs-guard.yml`**.

**Governance integrity (primary):** Commit or stash before another tool touches copilot, rules, skills, agents, or `CLAUDE.md`; keep `.github/skills` ↔ `.cursor/skills` and agent mirrors in one change; prefer small diffs. **Secondary (restore only if damaged):** **`docs/agent-governance-recovery.md`**.

**Teaching content:** For each active topic, maintain four aligned companions under `src/NN-category/topic-name/` — see `.github/copilot-instructions.md` and **`topic-companions`** skill. Subagents: **`webrtc-ci-verify`** (CI-aligned checks), **`webrtc-topic-bundle-review`** (one topic), **`webrtc-zero-copy-review`** (targeted paths).

---

## Four-layer topic modules (this repo only)

All learning content is organised by category and topic under `src/`:

1. `01-notes/<topic>.md` — theory
2. `02-exercises/<topic>-exercise.md` — self-assessment
3. `03-implementations/` — runnable demos and servers
4. `04-discussions/<topic>-discussion.md` — worked examples and architecture walkthroughs

See `docs/01-repository-structure.md`.

---

## Tools (maintenance)

- **Index:** `tools/README.md` → `psscripts/README.md`.
- **Node checks:** `npm ci` && `npm run check` (TypeScript, ESLint, Prettier).
- **Markdown / links:** `.github/skills/ci-checks/SKILL.md`; **Lychee** via Docker or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.
- **Zero-copy spot checks:** `tools/psscripts/Verify-ZeroCopy.ps1` when applicable.
- **Legacy PDF/PPTX conversion (optional):** `.archive/tools/pyscripts/` — requires local Python, not CI.
- **Public docs hygiene:** Never put internal-only source paths or labels in `README.md`, `docs/`, or public content trees; see `.cursor/rules/06_source_material_rules.mdc`.

---

## CI expectations

- **Node:** `npm ci`, typecheck, ESLint, Prettier — `ci-node.yml`.
- **Docs:** Markdown lint and Lychee — `ci-documentation.yml`.
- **Parity / guard:** `.github/skills/` ↔ `.cursor/skills/`; **`.github/agents/` ↔ `.cursor/agents/`**; **`ci-agent-docs-guard.yml`** when `.cursor/`, `.github/` skills or agents, or `CLAUDE.md` change.

Use the **`ci-checks`** skill for exact local commands.
