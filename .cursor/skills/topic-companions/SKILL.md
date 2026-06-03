---
name: topic-companions
description: >-
  Four-layer topic module architecture for webrtc-engineering — parity checks, migration SOP,
  and definition of done. Use when adding a topic, renaming files, or auditing a topic bundle.
  Learning content should stay beginner friendly and grounded in realistic use cases.
---

# Topic companions — four-layer SOP (WebRTC Engineering)

**Applies to**: `webrtc-engineering` **only**.

**Canonical governance**: `.github/copilot-instructions.md`, `docs/01-repository-structure.md`, and `.cursor/rules/01_educational-content-rules.mdc`.

## Layers (four) per topic under `src/`

| # | Path pattern | Role |
|---|--------------|------|
| 1 | `src/NN-category/topic-name/01-notes/` | Notes — first-person learning journey |
| 2 | `src/NN-category/topic-name/02-exercises/` | Exercises — self-assessment (original synthesis only) |
| 3 | `src/NN-category/topic-name/03-implementations/` | Implementations — runnable demos and servers |
| 4 | `src/NN-category/topic-name/04-discussions/` | Discussions — worked examples and architecture walkthroughs |

**Category folders:** numbered lowercase prefix (`01-fundamentals/`, `02-signaling/`, …).
**Topic folders:** kebab-case (`media-streams/`, `peer-connection/`, …).

## Migration SOP (on demand)

1. Confirm **naming contract** (`.cursor/rules/07_file-naming-conventions.mdc`) before renames.
2. For each **active** topic, ensure all **four** subfolders exist (or document WIP in `docs/reviews/`).
3. Add new topic folders **only when starting** that topic — no empty future scaffolding.
4. After each phase: fix cross-links; run **`ci-checks`** skill locally.
5. Mark a topic **done** only if all four layers have content, implementations run, and zero-copy passes.

## Definition of done (per topic)

- [ ] All four subfolders exist: `01-notes/`, `02-exercises/`, `03-implementations/`, `04-discussions/`.
- [ ] Content across notes, exercises, implementations, and discussions is aligned.
- [ ] Teaching content explains ideas in layman language and uses beginner-friendly wording.
- [ ] At least one realistic use case appears where it helps make the topic concrete.
- [ ] Mermaid diagrams include ASCII fallbacks wherever a visual explanation is applicable.
- [ ] Implementations run on localhost or HTTPS as required.
- [ ] No broken internal links for that topic.
- [ ] Exercise answers and worked steps match explanations.

## Related

- **Docs audit matrix:** `.github/skills/docs-verification/SKILL.md`
- **Subagent:** `.cursor/agents/webrtc-topic-bundle-review.md` (one topic pass)
