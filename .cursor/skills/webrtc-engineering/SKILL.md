---
name: webrtc-engineering
description: Work on webrtc-engineering — WebRTC demo applications under src/, hands-on browser and Node.js code, demo READMEs, zero-copy docs, and real-world use cases.
---

# WebRTC Engineering

**Scope:** Swamy PKV's personal learning only. See `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

## Layout

Numbered **learning path** under `src/`:

- `01_fundamentals/` … `05_architecture/` — concept notes (`NN_lesson/` inside each)
- `06_demos/NN_name/` — incremental runnable labs (e.g. `06_demos/01_getusermedia/`)
- `07_experiments/NN_name/` — measurements and spikes
- `08_projects/NN_name/` — integrated applications (e.g. `08_projects/01_video_call/`)
**Not numbered:** `docs/`, `tools/`, root `assets/` — no lesson sequence. Do not put assets under `src/`. Add `types/` or `utilities/` under `src/` only when the first shared code exists.

Each demo typically includes:

- `README.md` — purpose, run steps, WebRTC concepts
- Application code (HTML/JS/TS, optional Node signaling server)
- `package.json` when Node dependencies are needed

See `docs/01-repository-structure.md` for the full tree.

## Related

- **CI commands:** `.github/skills/ci-checks/SKILL.md`
- **Subagent:** `.cursor/agents/webrtc-demo-review.md`

## Demo documentation style

- Explain concepts in beginner-friendly language in READMEs and comments.
- Use realistic use cases (video calls, screen share, telehealth) where practical.
- Include Mermaid diagrams with ASCII fallbacks for signaling flows and architecture.
