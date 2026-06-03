# Repository skills (ML Algorithms from Scratch)

This file is **local to `t2-machine-learning`**. It complements `.cursor/rules/*.mdc` and `.github/copilot-instructions.md` with concise guidance for assistants editing this repo.

**Strict scope:** Swamy PKV's personal learning only — see `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

**Bundled agent skills:** `.github/skills/` is canonical; `.cursor/skills/` is a **byte-identical mirror** (see `.github/skills/README.md`). Bundles: **`t2-machine-learning`**, **`topic-companions`**, **`ci-checks`**, **`docs-verification`**, **`workspace-review`**, **`e2e-testing`**. Pushes under skills paths run **`.github/workflows/ci-skills-parity.yml`**; agent-facing path changes also run **`.github/workflows/ci-agent-docs-guard.yml`**.

**Governance integrity (primary):** Commit or stash before another tool touches copilot, rules, skills, agents, or `CLAUDE.md`; keep `.github/skills` ↔ `.cursor/skills` and agent mirrors in one change; prefer small diffs. **Secondary (restore only if damaged):** **`docs/agent-governance-recovery.md`**.

**Teaching content:** For each active week, maintain four aligned companions under `src/weekN/` — see `.github/copilot-instructions.md` and **`topic-companions`** skill. Subagents: **`ml-ci-verify`** (CI-aligned checks), **`ml-topic-bundle-review`** (one topic), **`ml-zero-copy-review`** (targeted paths).

---

## Four-layer topic companions (this repo only)

All learning content is organised by week under `src/weekN/`:

1. `src/weekN/01-notes/<topic>.md` — theory
2. `src/weekN/02-quizzes/<topic>-quiz.md` — self-assessment
3. `src/weekN/03-notebooks/<topic>-implementation.ipynb` — from-scratch code
4. `src/weekN/04-discussions/<topic>-discussion.md` — worked examples and discussion

See `docs/01_repository-structure.md`.

---

## Tools (maintenance)

- **Index:** `tools/README.md` → `pyscripts/README.md`, `psscripts/README.md`.
- **Markdown / links:** `.github/skills/ci-checks/SKILL.md`; **Lychee** via Docker or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.
- **Zero-copy spot checks:** `tools/psscripts/Verify-ZeroCopy.ps1` when applicable.
- **Conversions (internal):** `tools/psscripts/Convert-SourceMaterialPdfsToMarkdown.ps1`, `tools/pyscripts/pptx_to_md.py`, `tools/pyscripts/pdf_to_md.py`, `tools/pyscripts/md_to_pdf_reportlab.py`.
- **Public docs hygiene:** Never put `source-material/` paths or labels in `README.md`, `docs/`, or public content trees; see `.cursor/rules/06_source_material_rules.mdc`.

---

## CI expectations

- **Python:** `uv sync`, isort / black / flake8, notebook JSON — `ci-python.yml`.
- **Docs:** Markdown lint and Lychee — `ci-documentation.yml`.
- **Parity / guard:** `.github/skills/` ↔ `.cursor/skills/`; **`.github/agents/` ↔ `.cursor/agents/`**; **`ci-agent-docs-guard.yml`** when `.cursor/`, `.github/` skills or agents, or `CLAUDE.md` change.

Use the **`ci-checks`** skill for exact local commands.
