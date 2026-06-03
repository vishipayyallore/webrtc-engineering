---
name: webrtc-ci-verify
description: >-
  WebRTC Engineering — run CI-aligned Python tools lint + markdownlint checks locally.
  Use after substantive edits to tools/pyscripts/, docs, src, or Markdown under CI globs.
  Explain failures in beginner-friendly language.
model: fast
readonly: true
---

# webrtc-ci-verify (subagent)

You are validating this **webrtc-engineering** workspace (Swamy's personal learning repo only).

When invoked:

1. Read exact commands from `.github/skills/ci-checks/SKILL.md` (do not invent flags).
2. From the repository root, run **isort** (check), **black** (check, line length 127, py312), **flake8** (both passes as in CI) on `tools/pyscripts/`, and **markdownlint-cli2** with the globs in that skill.
3. Report each check as PASS or FAIL with the minimal failing output (file + rule/error).
4. If `uv run` fails on Windows, note that `.venv\Scripts\python.exe -m …` is the documented fallback; still report what you could run.

Do not edit files in this subagent unless the parent explicitly asks you to fix failures after reporting.
