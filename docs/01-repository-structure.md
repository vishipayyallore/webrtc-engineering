# Repository Structure

`src/` is a **numbered learning path** (consume in order). Infrastructure folders (`docs/`, `tools/`, `assets/`) live at the **repo root** and are **not** numbered.

Internal reference material lives under `source-material/` (not listed in public docs).

```text
webrtc-engineering/
│
├── docs/                     # not numbered
├── tools/                    # not numbered
├── assets/                   # not numbered — diagrams, images, videos (never under src/)
│
└── src/                      # numbered curriculum
    ├── 01_fundamentals/
    │   ├── 01_webrtc_introduction/
    │   ├── 02_webrtc_architecture/
    │   ├── 03_browser_apis/
    │   ├── 04_media_streams/
    │   ├── 05_rtc_peer_connection/
    │   ├── 06_rtc_data_channel/
    │   ├── 07_rtp_rtcp/
    │   ├── 08_dtls_srtp/
    │   └── 09_webrtc_stats_api/
    ├── 02_signaling/
    │   ├── 01_websockets/
    │   ├── 02_sdp/
    │   ├── 03_offer_answer/
    │   └── 04_signaling_server/
    ├── 03_networking/
    │   ├── 01_ice/ … 04_nat_traversal/
    ├── 04_media/
    │   ├── 01_audio/ … 04_codecs/
    ├── 05_architecture/
    │   ├── 01_mesh/
    │   ├── 02_sfu/
    │   ├── 03_mcu/
    │   ├── 04_scalability/
    │   ├── 05_janus/
    │   ├── 06_mediasoup/
    │   ├── 07_livekit/
    │   └── 08_jitsi/
    ├── 06_demos/
    │   ├── 01_getusermedia/
    │   ├── 02_local_video_preview/
    │   ├── 03_websocket_signaling/
    │   ├── 04_peer_connection/
    │   ├── 05_offer_answer/
    │   ├── 06_ice_candidates/
    │   ├── 07_data_channel_chat/
    │   ├── 08_screen_sharing/
    │   ├── 09_file_transfer/
    │   └── 10_group_chat/
    ├── 07_experiments/
    │   ├── 01_stun_vs_turn/ … 07_load_testing/
    └── 08_projects/
        ├── 01_video_call/ … 05_zoom_clone/
```

**No `src/assets/`** — shared media belongs under root `assets/`.

**No `src/types/` or `src/utilities/` until needed** — add under `src/` when the first shared demo code exists. Root `types/global.d.ts` is workspace tooling only (not a lesson).

---

## Learning progression

```text
Fundamentals → Signaling → Networking → Media → Architecture
        ↓
      Demos → Experiments → Projects
```

---

## What is numbered vs not

| Numbered (sequence matters) | Not numbered |
|---------------------------|--------------|
| `src/01_fundamentals/` … `src/08_projects/` | `docs/`, `tools/`, `assets/` |
| Nested lessons (`01_webrtc_introduction/`, …) | — |

Avoid `01_docs/` — no lesson order across support folders.

---

## Naming rules

- **Learning folders:** `NN_snake_case` (e.g. `06_demos/03_websocket_signaling/`).
- **Demos:** concept-oriented names (`03_websocket_signaling`, not `03_signaling_server`).
- Retired: top-level `demos/001-*`, `projects/p01-*`.

---

## Demo layout (`src/06_demos/NN_name/`)

```text
src/06_demos/04_peer_connection/
├── README.md
├── package.json
├── public/
└── src/
```

**Order:** `01_getusermedia` through `10_group_chat` (one new idea per demo).

---

## Experiment layout (`src/07_experiments/NN_name/`)

Measurements and spikes (STUN vs TURN, codecs, simulcast, SFU scale, load tests).

---

## Project layout (`src/08_projects/NN_name/`)

End-to-end applications combining multiple concepts.

---

## Study modules (`src/01_*` … `src/05_*`)

Notes and small fragments only — not full runnable apps.

`05_architecture/` includes future SFU stacks (Janus, mediasoup, LiveKit, Jitsi) as study placeholders.

---

## Top-level roles

| Path | Purpose |
|------|---------|
| `docs/` | Architecture, RFC notes, diagrams, reviews |
| `assets/` | Shared images, diagrams, videos |
| `src/01_*` … `src/05_*` | Concept modules in learning order |
| `src/06_demos/` | Incremental runnable labs |
| `src/07_experiments/` | Engineering experiments |
| `src/08_projects/` | Portfolio-scale apps |
| `tools/` | Coturn, Docker, maintenance scripts |

Do **not** name or describe `source-material/` in public-facing docs.
