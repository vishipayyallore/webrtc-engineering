# Repository skills (WebRTC Engineering)

This file is **local to `webrtc-engineering`**. It complements `.cursor/rules/*.mdc` and `.github/copilot-instructions.md`.

**Strict scope:** Swamy PKV's personal learning only — see `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

**Bundled agent skills:** `.github/skills/` is canonical; `.cursor/skills/` is a **byte-identical mirror**. Bundles: **`webrtc-engineering`**, **`ci-checks`**, **`docs-verification`**, **`workspace-review`**, **`e2e-testing`**.

**Subagents:** **`webrtc-ci-verify`**, **`webrtc-demo-review`**, **`webrtc-zero-copy-review`**.

---

## Demo applications (this repo)

Numbered learning path under `src/` (`01_fundamentals/` … `08_projects/`). Runnable demos: `src/06_demos/NN_name/` (e.g. `src/06_demos/01_getusermedia/`). Each demo includes a README with purpose, run steps, and WebRTC concepts.

See `docs/01-repository-structure.md`.

---

## Tools & CI

- **Node checks:** `npm ci` && `npm run check`
- **Markdown / links:** `.github/skills/ci-checks/SKILL.md`
- **Legacy PDF conversion (optional):** `.archive/tools/pyscripts/` — local Python only

Use the **`ci-checks`** skill for exact local commands.
