# Repository Structure

`src/` is a **numbered learning path** (consume in order). Infrastructure folders (`docs/`, `tools/`, `assets/`) are **not** numbered — there is no sequence among them.

Internal reference material lives under `source-material/` (not listed in public docs).

```text
webrtc-engineering/
│
├── README.md
├── package.json
│
├── docs/                     # not numbered — synthesized public docs
├── tools/                    # not numbered — Coturn, Docker, scripts
├── assets/                   # not numbered — shared images, diagrams, videos
│
└── src/                      # numbered curriculum (learning order)
    ├── 01_fundamentals/
    │   ├── 01_webrtc_introduction/
    │   ├── 02_webrtc_architecture/
    │   ├── 03_browser_apis/
    │   └── 04_media_streams/
    ├── 02_signaling/
    │   ├── 01_websockets/
    │   ├── 02_sdp/
    │   ├── 03_offer_answer/
    │   └── 04_signaling_server/
    ├── 03_networking/
    │   ├── 01_ice/
    │   ├── 02_stun/
    │   ├── 03_turn/
    │   └── 04_nat_traversal/
    ├── 04_media/
    │   ├── 01_audio/
    │   ├── 02_video/
    │   ├── 03_screen_sharing/
    │   └── 04_codecs/
    ├── 05_architecture/
    │   ├── 01_mesh/
    │   ├── 02_sfu/
    │   ├── 03_mcu/
    │   └── 04_scalability/
    ├── 06_demos/             # incremental runnable labs
    │   ├── 01_getusermedia/
    │   ├── 02_local_video_preview/
    │   ├── …
    │   └── 10_group_chat/
    ├── 07_experiments/       # measurements and spikes
    │   ├── 01_stun_vs_turn/
    │   ├── …
    │   └── 07_load_testing/
    ├── 08_projects/          # integrated applications
    │   ├── 01_video_call/
    │   ├── …
    │   └── 05_zoom_clone/
    ├── types/                # shared TypeScript baseline (not numbered)
    └── utilities/            # shared helpers (not numbered)
```

---

## Learning progression

```text
01–05  concepts (notes + small fragments)
   ↓
06     demos (one new idea per demo)
   ↓
07     experiments (often build on each other)
   ↓
08     projects (full applications)
```

---

## What is numbered vs not

| Numbered (sequence matters) | Not numbered (categories / tooling) |
|---------------------------|-------------------------------------|
| `src/01_fundamentals/` … `src/08_projects/` | `docs/`, `tools/`, `assets/` |
| Nested lessons `01_webrtc_introduction/`, etc. | `src/types/`, `src/utilities/` |

Avoid `01_docs/` or `02_tools/` — there is no lesson order across those trees.

---

## Naming rules

- **Learning folders:** `NN_snake_case` (e.g. `06_demos/`, `01_getusermedia/`).
- **Do not** use three-digit kebab-case at repo root (`001-getusermedia`) or `p01-` project prefixes — those are retired in favour of `src/08_projects/01_video_call/`.
- **Markdown files** inside modules: kebab-case (`ice-overview.md`).

---

## Demo layout (`src/06_demos/NN_name/`)

Each demo is self-contained:

```text
src/06_demos/04_peer_connection/
├── README.md           # purpose, run steps, concepts
├── package.json        # when Node dependencies are needed
├── public/             # static client (typical)
└── src/                # client and/or signaling server
```

**Order (planned):** `01_getusermedia` → `10_group_chat` (see folder names under `06_demos/`).

---

## Experiment layout (`src/07_experiments/NN_name/`)

```text
src/07_experiments/02_codec_comparison/
├── README.md
└── …
```

---

## Project layout (`src/08_projects/NN_name/`)

```text
src/08_projects/01_video_call/
├── README.md
├── package.json
├── client/
├── server/
└── …
```

---

## Study modules (`src/01_fundamentals/` … `src/05_architecture/`)

Notes and small fragments only — not full runnable apps (those live under `06_demos/` or `08_projects/`).

---

## Top-level roles

| Path | Purpose |
|------|---------|
| `docs/` | Architecture, RFC notes, diagrams, reviews |
| `src/01_*` … `src/05_*` | Concept modules in learning order |
| `src/06_demos/` | Numbered runnable WebRTC labs |
| `src/07_experiments/` | Codecs, bandwidth, SFU, load tests, etc. |
| `src/08_projects/` | End-to-end applications |
| `src/types/`, `src/utilities/` | Shared code (no sequence index) |
| `tools/` | Coturn, Docker, maintenance automation |
| `assets/` | Shared media and diagram assets |

Do **not** name or describe `source-material/` in `README.md`, issue templates, or other public-facing docs.
