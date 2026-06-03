# GitHub Copilot Instructions for webrtc-engineering

**Version**: 1.0
**Last Updated**: June 3, 2026
**Repository**: `webrtc-engineering`
**Context**: Personal WebRTC engineering learning workspace

**Environment**: Windows, PowerShell, Node.js, TypeScript/JavaScript
**Note**: All commands and scripts should use PowerShell syntax. File paths use Windows format.

---

## Strict scope (non-negotiable)

This repository is **Swamy PKV's personal learning only**. It is **not** for anyone else as courseware, templates, tutorials, or a reference corpus. **Do not** frame content for a general audience (other students, "learners," recruiters). Public visibility is **not** an invitation to use this repo for third-party purposes. Keep `README.md` aligned with the **Scope (read this first)** section.

---

## Repository Purpose

**webrtc-engineering** is **Swamy's** workspace for learning, experimenting with, and building real-time communication systems using WebRTC. It contains structured notes, exercises, implementations, and projects — **for his use**, not as a shared product for others.

### What This Repository Provides

- **Structured Learning Material**: Notes on WebRTC concepts, protocols, and architecture.
- **Hands-on Implementations**: Browser demos, signaling servers, and media pipelines in JavaScript/TypeScript.
- **Practice Exercises**: Self-assessment and lab scenarios (original synthesis only).
- **Resources**: RFC notes, course synthesis, and reference diagrams for Swamy's WebRTC study.

### Who this is for

- **Swamy PKV only** — personal study and practice. Not written for, maintained for, or aimed at any other audience.

---

## Repository Structure

**Quick Reference:**

- `src/NN-category/topic-name/` — Topic modules grouped by learning area (see `docs/01-repository-structure.md`).
- `docs/` — Architecture notes, RFC summaries, diagrams, and agent documentation.
- `experiments/` — Bandwidth, codec, and load-testing experiments.
- `assets/` — Images, diagrams, and media assets.
- `tools/` — PowerShell maintenance scripts; legacy Python converters archived under `.archive/tools/pyscripts/`.
- `README.md` — Project overview and learning roadmap.

**Four-Layer Topic Module Architecture:**

Each active topic under `src/` maintains four companion subfolders:

1. **Notes**: `01-notes/` — Theory, first-person learning journey
2. **Exercises**: `02-exercises/` — Self-assessment (original synthesis only)
3. **Implementations**: `03-implementations/` — Runnable demos (HTML/JS/TS, Node signaling, etc.)
4. **Discussions**: `04-discussions/` — Worked examples and architecture walkthroughs

**Example for a topic:**

```text
src/01-fundamentals/media-streams/
├── 01-notes/
├── 02-exercises/
├── 03-implementations/
└── 04-discussions/
```

**Learning Flow**: Read notes → Do exercises → Build implementations → Discuss examples

**Category folders** use numbered prefixes: `01-fundamentals/`, `02-signaling/`, `03-networking/`, etc. See `docs/01-repository-structure.md` for the full tree.

---

## Development Guidelines

### Source Material Staging

The concept and path of source material are **internal-only** between the author and AI/Copilot. Do not mention, reference, or enumerate that tree in public-facing documentation (`README.md`, `docs/**/*.md`, or published learning content). Use generic wording in public docs.

**Critical Restrictions:**

- **Read-Only Policy**:
  - **NEVER modify** any file inside `source-material/`
  - **NEVER overwrite** any file inside `source-material/`
  - **NEVER edit** content even if it contains errors
  - Files are **permanent reference materials**

- **No Deletion Policy**:
  - **NEVER delete** anything from `source-material/`
  - Content remains even after migration
  - Serves as **permanent historical reference**

- **Export Location Policy (PDF/PPTX conversions)**:
  - **NEVER write exported/converted files to `docs/exports/`** when the input comes from `source-material/`.
  - For `.pdf` / `.pptx` conversions, create outputs **in the same `source-material` location tree** as the input file.
  - Keep the conversion local to its source-material path so origin and extracted artifact stay together.

**Migration Workflow:**

1. Read from `source-material/` to understand concepts
2. Synthesize — Rewrite in your own words (NO copy-paste)
3. Publish to educational folders (`src/**/01-notes/`, `src/**/02-exercises/`, `src/**/03-implementations/`, `src/**/04-discussions/`, `docs/`)
4. Cite when using specific RFC sections, API definitions, or course claims

**Zero-Copy Policy:**

- **Good Synthesis**: Demonstrates understanding, uses different vocabulary, explains concepts
- **Bad Synthesis (Rejected)**: Word-for-word copying, minor rephrasing, close paraphrasing without understanding

**Purpose**: The folder is a staging area for raw author content, book transcripts/excerpts, PDF extracts, reference materials, and original code examples. These materials remain untouched and serve as permanent references while you create original, synthesized educational content.

### Project Focus

- **Protocol Accuracy**: Ensure WebRTC concepts, SDP/ICE flows, and signaling sequences are correct.
- **Exercise alignment**: Marked answers and worked steps must match the explanation.
- **Code Quality**: Use clear, well-commented JavaScript/TypeScript; follow existing project conventions when a demo has a build setup.
- **Diagrams**: Use Mermaid diagrams and ASCII fallbacks for signaling flows, ICE states, SFU/MCU topologies, and media pipelines.
- **Hands-on first**: Prefer runnable browser demos and small Node signaling servers over abstract-only notes.

### Code Style (TypeScript/JavaScript)

- Use meaningful variable names (`peerConnection` not `pc`, `localStream` not `ls`).
- Prefer TypeScript for non-trivial implementations when the topic folder already uses it.
- **Comments**: Explain the *why* of WebRTC steps (ICE gathering, SDP offer/answer, track lifecycle), not just syntax.
- **No hardcoded secrets**: Use environment variables for TURN credentials and API keys.
- **Browser compatibility**: Note which APIs require HTTPS or localhost.
- **Lint/format**: Root `npm run check` runs TypeScript, ESLint, and Prettier on workspace sources.

### Documentation Standards

- **Review reports**: All review reports go in `docs/reviews/`.
- **RFC notes**: Protocol summaries go in `docs/rfc-notes/`.
- **Topic notes**: Synthesized study notes go in `src/**/01-notes/`.

### Voice and Tone

- **Personal learning journey**: Write reading notes as Swamy's first-person learning journey (avoid "course" or instructor tone).
- **Reflection-oriented**: Prefer "I'm learning…", "I plan to…", "I want to be able to…" over generic descriptions.
- **Avoid course framing**: Don't title notes as "Course …" or write like a lecturer; write like my own notes.

### Plain English or worked example (every concept)

When authoring or editing public learning Markdown under `src/**/01-notes/`, `src/**/02-exercises/`, `src/**/04-discussions/`, and comparable notes:

- **Minimum:** For each concept, provide at least one of **(A)** simple plain-English explanation or **(B)** a worked example.
- **Beginner-friendly default:** Assume I am revising the topic after a gap. Use beginner-friendly wording before technical wording, and define specialist terms the first time they appear.
- **Layman explanation:** Explain each important idea in everyday language before moving to the formal version.
- **Real-world use case:** Wherever practical, connect the concept to at least one realistic use case (video call, screen share, telehealth, contact center, etc.).
- **Diagrams:** Where a process, workflow, or architecture is easier to understand visually, include a Mermaid diagram and an ASCII fallback.

### Naming Conventions

**Category folder naming:**

- Use numbered lowercase prefixes: `01-fundamentals/`, `02-signaling/`, `03-networking/`, etc.
- Topic folders use kebab-case: `media-streams/`, `peer-connection/`, `websocket-signaling/`.

**File naming within topic layers:**

- Notes: descriptive kebab-case markdown, e.g. `getusermedia-basics.md`
- Exercises: descriptive markdown with `-exercise` suffix, e.g. `ice-candidates-exercise.md`
- Implementations: descriptive names, e.g. `basic-video-call/` (folder) or `offer-answer-demo.html`
- Discussions: descriptive markdown with `-discussion` suffix, e.g. `sfu-vs-mcu-discussion.md`

**No `00_` prefix**: Files and folders must NOT use the `00_` prefix.

### Preferred Learning Flow

For each topic module, follow the **four-layer learning architecture**:

1. **Notes** (`01-notes/`) — Core concepts, protocol flows, and architecture foundations.
2. **Exercises** (`02-exercises/`) — Original synthesis questions to test understanding.
3. **Implementations** (`03-implementations/`) — Build understanding through runnable demos and servers.
4. **Discussions** (`04-discussions/`) — Worked examples and architecture trade-offs.

---

## Running the Code

**Node.js (workspace checks):**

```powershell
npm ci
npm run check
```

**Node.js (implementations):**

```powershell
cd src/<category>/<topic>/03-implementations/<demo-folder>
npm install
npm start
```

**Optional legacy PDF/PPTX conversion** (Python 3.12+ locally, not part of CI):

```powershell
python .archive/tools/pyscripts/pdf_to_md.py --help
```

---

## Prompt Engineering

When asking Copilot for help:

- Name the artifact and the goal clearly (for example `src/01-fundamentals/media-streams/01-notes/getusermedia-basics.md` or a signaling server under `03-implementations/`).
- Ask for **(A)** plain-English intuition and/or **(B)** a small step-by-step walkthrough when introducing ICE, SDP, or codec negotiation.
- Request runnable browser demos or Node signaling examples where appropriate.
- Ask for Mermaid + ASCII signaling or topology diagrams when explaining architecture.
- Specify browser constraints (HTTPS, localhost, required permissions).

---

## Protecting assistant governance (primary)

**Primary:** these files must stay **uncorrupted** — `.cursor/rules/`, mirrored **`.github/skills` ↔ `.cursor/skills`**, mirrored **`.github/agents` ↔ `.cursor/agents`**, `CLAUDE.md`, and **this** `copilot-instructions.md`. Before another AI tool or mass refactor touches them: **commit or stash**; edit **both** sides of each mirror in one change; prefer **small scoped diffs**; rely on **`ci-skills-parity.yml`** and **`ci-agent-docs-guard.yml`** on push.

**Secondary (only if damage already happened):** restore from Git as one bundle — **`docs/agent-governance-recovery.md`**.
