---
name: ci-checks
description: Run CI-aligned checks for WebRTC Engineering (Python tools lint, markdown lint, optional Lychee). Use when asked to run CI, lint, or verify code quality after content or tooling updates.
---

# CI Checks — Local Runner (WebRTC Engineering)

Commands mirror `.github/workflows/ci-python.yml` and `.github/workflows/ci-documentation.yml`.

## Policy

- **Quality expectations:** `.cursor/rules/03_quality-assurance.mdc` and `.github/copilot-instructions.md`.

## Prerequisites

- **Python:** `uv` at repo root — `uv sync` (dev dependency group supplies black, isort, flake8 for `tools/pyscripts/`).
- **Node.js:** **20.x** for `markdownlint-cli2` (match `ci-documentation.yml`).
- **Link checks:** **Docker** with `lycheeverse/lychee:latest`, local `lychee`, or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.

### Windows / `uv run` troubleshooting

If `uv run` fails with **"Failed to canonicalize script path"** (some Windows setups), use the project venv after `uv sync`, for example:

```powershell
.\.venv\Scripts\python.exe -m isort --check-only --diff tools/pyscripts/
.\.venv\Scripts\python.exe -m black --check --line-length 127 --target-version py312 tools/pyscripts/
.\.venv\Scripts\python.exe -m flake8 tools/pyscripts/ --count --select=E9,F63,F7,F82 --show-source --statistics
```

## Checks to run

Report each as PASS or FAIL with output.

### 1. isort (tools Python)

```powershell
uv run isort --check-only --diff tools/pyscripts/
```

### 2. Black (tools Python)

```powershell
uv run black --check --line-length 127 --target-version py312 tools/pyscripts/
```

### 3. flake8 (tools Python)

```powershell
uv run flake8 tools/pyscripts/ --count --select=E9,F63,F7,F82 --show-source --statistics
uv run flake8 tools/pyscripts/ --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
```

### 4. markdownlint-cli2

```powershell
npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" "tools/**/*.md"
```

### Optional — Lychee (Docker, recommended)

```powershell
docker run --rm `
  -v "${PWD}:/workspace" `
  -w /workspace `
  lycheeverse/lychee:latest `
  --config lychee.toml --cache --max-cache-age 1d '**/*.md'
```

Or: `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1 -LycheeOnly` / local `lychee` with the same flags.

## Execution strategy

Run 1–3 from repo root with `uv`; run 4 with Node. Parallelize Python checks where helpful.

## On failure

- **Black / isort:** suggest `uv run black tools/pyscripts/` / `uv run isort tools/pyscripts/` from repo root.
- **flake8 / markdownlint:** report file (and line if applicable); do not skip silently.

## Summary format

| # | Check | Status | Notes |
|---|--------|--------|-------|
| 1 | isort | | |
| 2 | black | | |
| 3 | flake8 | | |
| 4 | markdownlint | | |

When a failure affects teaching content, explain the impact in beginner-friendly language.
