# Repository Structure

This layout separates **study notes** (`src/`), **incremental demos** (`demos/`), **integrated projects** (`projects/`), **experiments**, and **internal reference material** (`source-material/` — not listed in public docs).

```text
webrtc-engineering/
│
├── README.md
├── LICENSE
├── package.json              # root lint / typecheck (Node workspace)
│
├── docs/
│   ├── 01-repository-structure.md
│   ├── agent-skills.md
│   ├── agent-subagents.md
│   ├── agent-governance-recovery.md
│   ├── architecture/         # system / topology notes (SFU, mesh, signaling flows)
│   ├── notes/                # synthesized learning notes
│   ├── diagrams/             # exported or source diagram assets for docs
│   ├── rfc-notes/            # RFC / spec summaries
│   └── reviews/              # workspace audit reports
│
├── source-material/          # INTERNAL ONLY — read-only staging (see cursor rules)
│   ├── packt/
│   ├── books/
│   ├── articles/
│   └── references/
│
├── src/                      # topic modules (notes, snippets — not full apps)
│   ├── fundamentals/
│   ├── signaling/
│   ├── networking/
│   ├── media/
│   ├── architecture/
│   ├── utilities/
│   └── types/                # shared TypeScript baseline (repo-wide)
│
├── demos/                    # numbered, small, runnable WebRTC labs
│   ├── 001-getusermedia/
│   ├── 002-local-video-preview/
│   ├── 003-peer-connection/
│   ├── 004-data-channel-chat/
│   ├── 005-screen-sharing/
│   ├── 006-file-transfer/
│   ├── 007-group-chat/
│   └── ...
│
├── projects/                 # larger multi-part applications
│   ├── p01-video-call/
│   ├── p02-group-video-chat/
│   ├── p03-virtual-classroom/
│   ├── p04-webinar-platform/
│   ├── p05-zoom-clone/
│   └── ...
│
├── experiments/
│   ├── codecs/
│   ├── bandwidth/
│   ├── packet-loss/
│   ├── simulcast/
│   ├── sfu/
│   └── load-testing/
│
├── tools/
│   ├── coturn/               # TURN server configs / helpers
│   ├── docker/               # compose files, Dockerfiles
│   ├── scripts/              # repo maintenance scripts (PowerShell)
│   └── psscripts/            # existing PowerShell helpers (same role as scripts/)
│
└── assets/
    ├── images/
    ├── diagrams/
    └── videos/
```

---

## Top-level roles

| Path | Purpose |
|------|---------|
| `docs/` | Public synthesized documentation — architecture, RFC notes, diagrams |
| `src/` | Topic-oriented study modules (markdown, small snippets, references between demos) |
| `demos/` | Short, numbered, runnable browser/Node labs — one WebRTC idea each |
| `projects/` | End-to-end applications combining multiple WebRTC concepts |
| `experiments/` | Measurements and spikes (codecs, bandwidth, SFU behaviour, load tests) |
| `tools/` | Coturn, Docker, and maintenance automation |
| `assets/` | Shared media and diagram assets |

Do **not** name or describe `source-material/` in `README.md`, issue templates, or other public-facing docs.

---

## Demo layout (`demos/NNN-name/`)

Each demo is a **self-contained** folder:

```text
demos/003-peer-connection/
├── README.md           # purpose, run steps, concepts (first-person notes OK)
├── package.json        # when Node dependencies are needed
├── public/             # static client (typical)
├── src/                # client and/or signaling server (TS/JS)
└── ...
```

**Naming:** three-digit prefix + kebab-case (`001-getusermedia`, `004-data-channel-chat`).

---

## Project layout (`projects/pNN-name/`)

Same idea as demos, but scope is a **full application** (multiple pages, signaling service, deployment notes):

```text
projects/p01-video-call/
├── README.md
├── package.json
├── client/
├── server/
└── ...
```

**Naming:** `p` + two-digit index + kebab-case (`p01-video-call`, `p05-zoom-clone`).

---

## Study modules (`src/<topic>/`)

Use for **topic-aligned notes and small code fragments**, not full runnable apps (those live under `demos/` or `projects/`):

```text
src/fundamentals/
├── media-streams.md
└── ...
```

**Naming:** lowercase topic folders (`fundamentals/`, `signaling/`, `networking/`).

---

## Progression (suggested)

1. Read / write notes under `src/` and `docs/`
2. Build numbered demos in order under `demos/`
3. Combine skills in `projects/`
4. Tune and measure under `experiments/`

When writing or updating public-facing structure, do not list internal-only paths.
