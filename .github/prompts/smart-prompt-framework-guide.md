# S.M.A.R.T. Prompt Framework Guide

**WebRTC Engineering Edition** — Framework for creating high-quality coding agent instructions aligned with WebRTC implementation best practices and educational standards.

---

## S.M.A.R.T. Framework Overview

```
S - Specific Role Definition (WebRTC Engineer, Signaling Specialist, Media Pipeline Developer)
M - Measurable Mission Statement (clear deliverable and success criteria)
A - Actionable Context (repo structure, constraints, tech stack)
R - Relevant Constraints (Swamy-only scope, zero-copy, four-layer modules)
T - Testable Success Criteria (runnable demo, correct ICE flow, CI pass)
```

---

## WebRTC System Alignment

When prompting agents for this repository, align with:

- **Four-layer topic modules** under `src/NN-category/topic-name/`
- **Swamy-only personal learning** — first-person voice, not courseware
- **Zero-copy synthesis** — no verbatim course or book paste into public folders
- **Hands-on first** — prefer runnable browser demos and Node signaling servers
- **Diagrams** — Mermaid + ASCII for signaling flows, ICE states, SFU/MCU topologies

---

## Role Templates

### For WebRTC Browser Demos

```
ROLE: You are a WebRTC Engineer specializing in browser APIs (getUserMedia, RTCPeerConnection, RTCDataChannel).

MISSION: Implement [specific demo] under src/[category]/[topic]/03-implementations/ for Swamy's personal learning repo.

CONTEXT:
- Repository: webrtc-engineering (personal learning only)
- Topic path: src/01-fundamentals/media-streams/03-implementations/
- Must include README with localhost/HTTPS requirements

CONSTRAINTS:
- Do not modify source-material/ or governance files without explicit request
- Explain WebRTC steps in comments (why, not just how)
- No hardcoded TURN credentials

SUCCESS:
- Demo runs on localhost
- Signaling/ICE flow matches documented sequence
- Concept explained in layman language in accompanying notes if requested
```

### For Signaling Servers

```
ROLE: You are a Node.js signaling specialist for WebRTC offer/answer exchange.

MISSION: Build a WebSocket signaling server for [use case] under the appropriate 03-implementations/ folder.

CONTEXT:
- Express or Socket.IO as appropriate to existing demo structure
- Document message types (offer, answer, ice-candidate)

CONSTRAINTS:
- Environment variables for any secrets
- Match four-layer topic module layout

SUCCESS:
- Server starts with documented command
- Browser client can complete offer/answer + ICE exchange
```

### For Learning Notes

```
ROLE: You are a technical writer helping Swamy synthesize WebRTC learning notes in first-person voice.

MISSION: Write or revise notes in src/[category]/[topic]/01-notes/[file].md

CONSTRAINTS:
- Zero-copy: original synthesis only
- Beginner-friendly explanation before jargon
- At least one real-world use case per major concept
- Mermaid + ASCII diagram where a visual helps

SUCCESS:
- Reads as personal learning notes ("I'm learning…")
- Concepts have plain-English or worked-example coverage
- No instructor/courseware tone
```

---

## Anti-Patterns (Avoid)

- ❌ Framing content for a general audience ("learners", "students")
- ❌ Copy-pasting course slides into `02-exercises/` or `04-discussions/`
- ❌ Referencing internal-only source paths in public docs
- ❌ Hardcoding TURN credentials or API keys
- ❌ Bulk-editing governance files without mirror parity
- ❌ Using week-based paths (`src/weekN/`) — this repo uses category/topic modules

---

## WebRTC-Specific S.M.A.R.T. Example

```
ROLE: WebRTC Engineer — peer connection and ICE fundamentals

MISSION: Add a minimal video-call demo under src/01-fundamentals/peer-connection/03-implementations/basic-video-call/

CONTEXT:
- Personal learning repo (Swamy only)
- Pair with notes in 01-notes/ explaining offer/answer and ICE gathering
- Use plain HTML + JavaScript unless topic folder already uses TypeScript

CONSTRAINTS:
- localhost or HTTPS as required by getUserMedia
- Comment why each RTCPeerConnection step happens
- Keep governance files unchanged

SUCCESS CRITERIA:
- [ ] Local demo: two tabs can connect with STUN
- [ ] README documents run steps and browser requirements
- [ ] ICE and SDP flow documented in 01-notes/ or demo README
- [ ] No secrets in source
```

---

## Integration with Repository Governance

| Need | Use |
|------|-----|
| Always-on rules | `.github/copilot-instructions.md`, `.cursor/rules/` |
| Repeatable procedures | `.github/skills/` (ci-checks, topic-companions, etc.) |
| Delegated audits | `.cursor/agents/` (webrtc-ci-verify, webrtc-topic-bundle-review) |
| Entry point | `CLAUDE.md`, `AGENTS.md` |

This framework ensures consistent, high-quality results from coding agents while maintaining educational standards aligned with WebRTC engineering best practices.
