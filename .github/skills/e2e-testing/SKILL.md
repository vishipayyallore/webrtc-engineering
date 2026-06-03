---
name: e2e-testing
description: Smoke verification for WebRTC Engineering (Node env, lint, optional demo run). Use when smoke-testing the workspace end-to-end after content or implementation changes.
---

# Smoke / E2E-style verification — WebRTC Engineering

No single deployed application spans the whole repo. "End-to-end" means **environment + lint + optional demo run**.

## Prerequisites

- **Node.js 20+** at repo root (`npm ci`)
- Optional: Browser for manual demo verification under `src/**/03-implementations/`

## Suggested sequence

1. **Dependencies**

   ```powershell
   npm ci
   ```

2. **Workspace checks**

   ```powershell
   npm run check
   ```

3. **Markdown lint** (same as CI docs workflow)

   ```powershell
   npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" "tools/**/*.md"
   ```

4. **Manual (optional)** — open a representative demo from `src/**/03-implementations/`, verify getUserMedia / peer connection / signaling as applicable.

## Summary

Report each step **PASS** / **FAIL** / **SKIPPED**.

When the failure affects teaching flow, explain it in beginner-friendly language so the next fix is obvious.
