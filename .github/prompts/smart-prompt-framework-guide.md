# S.M.A.R.T. Prompt Framework — WebRTC Engineering

Framework for coding agent instructions aligned with **demo applications** in this repo.

## S.M.A.R.T.

```
S - Specific Role (WebRTC Engineer, Signaling Specialist)
M - Measurable Mission (runnable demo, correct ICE flow)
A - Actionable Context (demo path, tech stack)
R - Relevant Constraints (Swamy-only, zero-copy, no secrets in code)
T - Testable Success (npm start works, README complete)
```

## Repo alignment

- Demos live under `src/06_demos/NN_name/` (numbered learning path under `src/`)
- Each demo: **README** + code + optional **package.json**
- Reference material in `docs/` — not a fixed notes/quizzes/notebooks layout

## Example prompt

```
ROLE: WebRTC Engineer — browser video call demo

MISSION: Add src/06_demos/01_getusermedia/ with getUserMedia + local preview

CONTEXT: Personal demo repo (Swamy only); Node 20+; TypeScript preferred

CONSTRAINTS:
- README with run steps and localhost/HTTPS note
- No hardcoded TURN credentials
- WebRTC steps explained in comments

SUCCESS:
- npm start serves working preview
- README documents concepts in plain English
```

## Anti-patterns

- ❌ Four-layer folders (`01-notes/`, `02-exercises/`, …) — that was the M.Sc. ML repo pattern
- ❌ Courseware tone or general-audience framing
- ❌ Pasted course slides in READMEs

## Governance

| Need | Location |
|------|----------|
| Always-on rules | `.github/copilot-instructions.md`, `.cursor/rules/` |
| CI | `.github/skills/ci-checks/SKILL.md` |
| Demo audit | `.cursor/agents/webrtc-demo-review.md` |
