# WebRTC Engineering — Repository Verification

## Context

**WebRTC Engineering** — Swamy PKV's personal repo of WebRTC **demo applications**.

**Structure:**

- `src/NN-category/demo-name/` — self-contained demos (README, code, optional `package.json`)
- `docs/` — architecture notes, RFC summaries, reviews
- `experiments/` — bandwidth, codec, load tests
- `tools/psscripts/` — PowerShell maintenance scripts

## Verification checks

- Demo READMEs: purpose, run steps, localhost/HTTPS notes, plain-English WebRTC concepts
- Code: signaling/ICE flows correct; no hardcoded secrets
- Layout matches `docs/01-repository-structure.md`
- Zero-copy in public docs (no pasted course material)
- `npm run check` passes when workspace TS/JS changed
- Broken links and markdown lint

## Output

Critical / Major / Minor findings with concrete file paths.

---

**Note**: Demo applications repo — not four-layer courseware.
