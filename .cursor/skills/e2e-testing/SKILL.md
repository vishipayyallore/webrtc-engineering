---
name: e2e-testing
description: Smoke verification for WebRTC Engineering (environment, tools Python, markdown lint, optional demo run). Use when smoke-testing the workspace end-to-end after content or implementation changes.
---

# Smoke / E2E-style verification — WebRTC Engineering

No single deployed application spans the whole repo. "End-to-end" means **environment + lint + optional demo run**.

## Prerequisites

- Python 3.12+ with **`uv`** at repo root (tools)
- Node.js for implementation demos (per topic folder)
- Optional: Browser for manual demo verification

## Suggested sequence

1. **Dependencies (tools)**

   ```powershell
   $Env:UV_LINK_MODE = "copy"
   uv sync
   ```

2. **Python tools smoke (optional)**

   ```powershell
   uv run python -c "import pathlib; print('ok', len(list(pathlib.Path('tools/pyscripts').glob('*.py'))))"
   ```

3. **Markdown lint** (same as CI):

   ```powershell
   npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" "tools/**/*.md"
   ```

4. **Manual (optional)** — open a representative demo from `src/**/03-implementations/`, verify getUserMedia / peer connection / signaling as applicable.

## Summary

Report each step **PASS** / **FAIL** / **SKIPPED**.

When the failure affects teaching flow, explain it in beginner-friendly language so the next fix is obvious.
