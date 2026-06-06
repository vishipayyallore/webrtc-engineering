---
name: ci-checks
description: Run CI-aligned checks for WebRTC Engineering (TypeScript, ESLint, Prettier, markdown lint, optional Lychee). Use when asked to run CI, lint, or verify code quality after content or code updates.
---

# CI Checks — Local Runner (WebRTC Engineering)

Commands mirror `.github/workflows/ci-node.yml` and `.github/workflows/ci-documentation.yml`.

## Policy

- **Quality expectations:** `.cursor/rules/03_quality-assurance.mdc` and `.github/copilot-instructions.md`.

## Prerequisites

- **Node.js:** **20.x** at repo root — `npm ci` (ESLint, Prettier, TypeScript).
- **Link checks:** **Docker** with `lycheeverse/lychee:latest`, local `lychee`, or `.\tools\psscripts\Run-MarkdownLintAndLychee.ps1`.

## Checks to run

Report each as PASS or FAIL with output.

### 1. TypeScript

```powershell
npm run typecheck
```

### 2. ESLint

```powershell
npm run lint
```

### 3. Prettier

```powershell
npm run format:check
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

Run 1–3 from repo root with `npm`; run 4 with `npx`. Demos under `src/06_demos/NN_name/` may have their own scripts — run when editing that demo.

## On failure

- **ESLint / Prettier:** suggest `npm run lint:fix` / `npm run format` from repo root.
- **TypeScript / markdownlint:** report file (and line if applicable); do not skip silently.

## Summary format

| # | Check | Status | Notes |
|---|--------|--------|-------|
| 1 | typecheck | | |
| 2 | eslint | | |
| 3 | prettier | | |
| 4 | markdownlint | | |

When a failure affects teaching content, explain the impact in beginner-friendly language.
