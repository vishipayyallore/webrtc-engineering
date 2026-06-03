# WebRTC Engineering Repository Verification and Content Enhancement

## Context

You are working with **WebRTC Engineering**, Swamy PKV's personal learning workspace for real-time communication systems. The repository covers WebRTC fundamentals, signaling, ICE/STUN/TURN, media pipelines, SFU/MCU architectures, and production-oriented study material for Swamy's own practice.

**Repository Structure:**

- `src/NN-category/topic-name/01-notes/` — theory and first-person learning notes
- `src/NN-category/topic-name/02-exercises/` — original self-assessment questions
- `src/NN-category/topic-name/03-implementations/` — runnable demos and signaling servers
- `src/NN-category/topic-name/04-discussions/` — worked examples and architecture walkthroughs
- `docs/` — structure guides, RFC notes, agent docs, and review notes
- `experiments/` — bandwidth, codec, and load-testing experiments
- `tools/` — maintenance scripts and conversion helpers
- `.github/` — workflows, prompts, mirrored skills, mirrored agents, and templates
- `.cursor/` — Cursor AI project rules, skills mirror, and agents

**Primary Objective:**
Perform a COMPREHENSIVE audit of the repository using WebRTC Engineering standards and quality criteria. Verify file contents, run structured checks, and produce actionable reports with suggestions and fixes.

---

## WebRTC System Verification Checks

### A. File Content Inspection

- Open and verify every file (no file skipped)
- Ensure markdown formatting compliance
- Check for completeness and consistency with project objectives
- Verify ZERO copy policy compliance (no copy-paste artifacts)

### B. WebRTC Implementation Alignment

- Verify signaling sequences match documented offer/answer and ICE flows
- Validate browser demo behavior (getUserMedia, RTCPeerConnection, data channels)
- Check STUN/TURN configuration is documented when NAT traversal is involved
- Ensure implementations follow WebRTC API best practices

### C. Content Accuracy and Quality

- Verify technical correctness and alignment with WebRTC protocols
- Ensure completeness for stated learning objectives
- Check alignment with real-world use cases (video calls, screen share, telehealth)
- Validate code examples are current, relevant, and runnable
- Confirm beginner-friendly explanations precede formal protocol detail

### D. Project Metadata Requirements

Check for presence of:

- Topic category and learning objective
- Clear objectives (specific, measurable)
- Runnable demo instructions where implementations exist
- Related topics and cross-references
- Mermaid + ASCII diagrams for signaling and topology where applicable

### E. Naming Convention Compliance

- Category folders: numbered lowercase prefix (`01-fundamentals/`, `02-signaling/`)
- Topic folders: kebab-case (`media-streams/`, `peer-connection/`)
- Four layers: `01-notes/`, `02-exercises/`, `03-implementations/`, `04-discussions/`
- Verify folder structure follows `docs/01-repository-structure.md`

### F. Broken Links and References

- Verify all internal cross-references work correctly
- Check README files and navigation structure
- Validate external resource links (MDN, W3C, RFCs)
- Ensure topic navigation links are accurate

### G. Content Quality Standards

- Spellcheck and grammar verification
- Character encoding validation (UTF-8 only)
- Markdown formatting compliance (markdownlint standards)
- Code example correctness and completeness
- Proper code fence language specification (`javascript`, `typescript`, `powershell`)

### H. Code Organization

- Implementations grouped under `03-implementations/` per topic
- Reusable modules within demo folders where appropriate
- Per-topic demos under `src/**/03-implementations/` with local `package.json` when needed
- Root `npm run check` for workspace TypeScript, ESLint, and Prettier
- No hardcoded TURN credentials or API keys

---

## Execution Protocol

1. Read `.github/copilot-instructions.md` and `docs/01-repository-structure.md`.
2. Run **ci-checks** skill commands locally where possible.
3. Audit active `src/` topic modules (skip `.archive/` unless asked).
4. Never list or reference internal-only source paths in public audit reports.
5. Produce findings as Critical / Major / Minor with concrete file paths.

---

## Output Format

```markdown
## Summary
[One paragraph overview]

## Critical Findings
| File | Issue | Suggested Fix |

## Major Findings
| File | Issue | Suggested Fix |

## Minor Findings
| File | Issue | Suggested Fix |

## CI Results
| Check | Status | Notes |
```

---

**Note**: This repository is Swamy PKV's personal WebRTC study workspace. Keep audits aligned with the topic-based four-layer structure under `src/`.
