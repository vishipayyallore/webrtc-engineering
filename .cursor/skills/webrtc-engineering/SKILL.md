---
name: webrtc-engineering
description: Work on webrtc-engineering — WebRTC demo applications under src/, hands-on browser and Node.js code, demo READMEs, zero-copy docs, and real-world use cases.
---

# WebRTC Engineering

**Scope:** Swamy PKV's personal learning only. See `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

## Layout

Self-contained **demo apps** live under `src/NN-category/demo-name/` (for example `src/06-small-projects/webcam-viewer/`).

Each demo typically includes:

- `README.md` — purpose, run steps, WebRTC concepts
- Application code (HTML/JS/TS, optional Node signaling server)
- `package.json` when Node dependencies are needed

See `docs/01-repository-structure.md` for the category tree.

## Related

- **CI commands:** `.github/skills/ci-checks/SKILL.md`
- **Subagent:** `.cursor/agents/webrtc-demo-review.md`

## Demo documentation style

- Explain concepts in beginner-friendly language in READMEs and comments.
- Use realistic use cases (video calls, screen share, telehealth) where practical.
- Include Mermaid diagrams with ASCII fallbacks for signaling flows and architecture.
