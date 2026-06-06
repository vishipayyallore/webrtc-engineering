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

**webrtc-engineering** is **Swamy's** workspace for building and experimenting with WebRTC demo applications — browser clients, signaling servers, and media pipelines in JavaScript/TypeScript.

### What This Repository Provides

- **Study path**: Numbered modules under `src/01_fundamentals/` … `src/08_projects/` (see `docs/01-repository-structure.md`).
- **Demos**: Incremental labs under `src/06_demos/NN_name/`.
- **Experiments**: Spikes under `src/07_experiments/NN_name/`.
- **Projects**: Integrated apps under `src/08_projects/NN_name/`.
- **Supporting docs**: Architecture notes, RFC summaries, and diagrams under `docs/` (not numbered).

### Who this is for

- **Swamy PKV only** — personal study and practice. Not written for, maintained for, or aimed at any other audience.

---

## Repository Structure

**Quick Reference:**

- `src/01_fundamentals/` … `src/05_architecture/` — Concept modules (numbered lessons inside each).
- `src/06_demos/` — Runnable WebRTC labs (`01_getusermedia/`, …).
- `src/07_experiments/` — Measurements and spikes (`01_stun_vs_turn/`, …).
- `src/08_projects/` — Full applications (`01_video_call/`, …).
- Add `src/types/` or `src/utilities/` only when the first shared code exists (no empty placeholders).
- `docs/` — Public synthesized docs (not numbered).
- `assets/` — Shared images, diagrams, videos (not numbered).
- `tools/` — Coturn, Docker, PowerShell scripts (`tools/scripts/`, `tools/psscripts/`).
- `README.md` — Project overview and learning roadmap.

**Demo layout:**

```text
src/06_demos/04_peer_connection/
├── README.md
├── package.json
├── public/
└── src/
```

**Project layout:** same pattern under `src/08_projects/01_video_call/`, etc.

See `docs/01-repository-structure.md` for the full tree.

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
3. Publish original demo/project code under `src/06_demos/` or `src/08_projects/`, study notes under `src/01_fundamentals/` … `src/05_architecture/`, or reference docs under `docs/`
4. Cite when using specific RFC sections, API definitions, or course claims

**Zero-Copy Policy:**

- **Good Synthesis**: Demonstrates understanding, uses different vocabulary, explains concepts
- **Bad Synthesis (Rejected)**: Word-for-word copying, minor rephrasing, close paraphrasing without understanding

**Purpose**: The folder is a staging area for raw author content, book transcripts/excerpts, PDF extracts, reference materials, and original code examples. These materials remain untouched and serve as permanent references while you create original, synthesized educational content.

### Project Focus

- **Protocol Accuracy**: Ensure WebRTC concepts, SDP/ICE flows, and signaling sequences are correct.
- **Code Quality**: Use clear, well-commented JavaScript/TypeScript; follow existing conventions in each demo.
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
- **Demo READMEs**: Purpose, run steps, and WebRTC concepts for each app under `src/06_demos/` or `src/08_projects/`.

### Voice and Tone

- **Personal learning journey**: Write reading notes as Swamy's first-person learning journey (avoid "course" or instructor tone).
- **Reflection-oriented**: Prefer "I'm learning…", "I plan to…", "I want to be able to…" over generic descriptions.
- **Avoid course framing**: Don't title notes as "Course …" or write like a lecturer; write like my own notes.

### Plain English or worked example (every concept)

When authoring or editing demo READMEs, `docs/`, or explanatory comments:

- **Minimum:** For each concept, provide at least one of **(A)** simple plain-English explanation or **(B)** a worked example.
- **Beginner-friendly default:** Assume I am revising the topic after a gap. Use beginner-friendly wording before technical wording, and define specialist terms the first time they appear.
- **Layman explanation:** Explain each important idea in everyday language before moving to the formal version.
- **Real-world use case:** Wherever practical, connect the concept to at least one realistic use case (video call, screen share, telehealth, contact center, etc.).
- **Diagrams:** Where a process, workflow, or architecture is easier to understand visually, include a Mermaid diagram and an ASCII fallback.

### Naming Conventions

**Category folder naming:**

**Naming:**

- **Learning folders:** `NN_snake_case` under `src/` (e.g. `06_demos/01_getusermedia/`, `08_projects/01_video_call/`).
- **Concept modules:** `src/01_fundamentals/01_webrtc_introduction/`, etc.
- **Not numbered:** `docs/`, `tools/`, `assets/` (root only — never `src/assets/`).
- Each demo/project includes `README.md`; add `package.json` when Node dependencies are needed.

**No `00_` prefix**: Files and folders must NOT use the `00_` prefix.

---

## Running the Code

**Node.js (workspace checks):**

```powershell
npm ci
npm run check
```

**Node.js (implementations):**

```powershell
cd src/06_demos/04_peer_connection
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

- Name the demo and goal clearly (for example `src/06_demos/01_getusermedia/README.md` or `src/08_projects/01_video_call/README.md`).
- Ask for **(A)** plain-English intuition and/or **(B)** a small step-by-step walkthrough when introducing ICE, SDP, or codec negotiation.
- Request runnable browser demos or Node signaling examples where appropriate.
- Ask for Mermaid + ASCII signaling or topology diagrams when explaining architecture.
- Specify browser constraints (HTTPS, localhost, required permissions).

---

## Protecting assistant governance (primary)

**Primary:** these files must stay **uncorrupted** — `.cursor/rules/`, mirrored **`.github/skills` ↔ `.cursor/skills`**, mirrored **`.github/agents` ↔ `.cursor/agents`**, `CLAUDE.md`, and **this** `copilot-instructions.md`. Before another AI tool or mass refactor touches them: **commit or stash**; edit **both** sides of each mirror in one change; prefer **small scoped diffs**; rely on **`ci-skills-parity.yml`** and **`ci-agent-docs-guard.yml`** on push.

**Secondary (only if damage already happened):** restore from Git as one bundle — **`docs/agent-governance-recovery.md`**.
