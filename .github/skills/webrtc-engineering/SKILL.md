---
name: webrtc-engineering
description: Work on webrtc-engineering — topic modules under src/, four-layer companions (01-notes, 02-exercises, 03-implementations, 04-discussions), hands-on WebRTC demos, zero-copy, beginner-friendly explanations, and real-world use cases.
---

# WebRTC Engineering

**Scope:** Swamy PKV's personal learning only. See `README.md` and `.cursor/rules/00_swamy_personal_learning_only.mdc`.

## Layout

Content is organized by **category and topic** under `src/`. Each topic has four companion subfolders:

| Layer | Path |
|-------|------|
| Notes | `src/NN-category/topic-name/01-notes/` |
| Exercises | `src/NN-category/topic-name/02-exercises/` |
| Implementations | `src/NN-category/topic-name/03-implementations/` |
| Discussions | `src/NN-category/topic-name/04-discussions/` |

See `docs/01-repository-structure.md` for the full category tree.

## Related

- **Topic SOP:** `.github/skills/topic-companions/SKILL.md`
- **CI commands:** `.github/skills/ci-checks/SKILL.md`
- **Subagent:** `.cursor/agents/webrtc-topic-bundle-review.md`

## Teaching style

- Explain concepts in beginner-friendly language before using formal WebRTC terms.
- Add layman explanations for ICE, SDP, codecs, and topology choices.
- Use realistic use cases (video calls, screen share, telehealth, webinars) where practical.
- Include Mermaid diagrams with ASCII fallbacks for signaling flows and architecture.
