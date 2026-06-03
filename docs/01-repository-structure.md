# Repository Structure

```text
webrtc-engineering/
│
├── README.md
├── LICENSE
├── CLAUDE.md
├── AGENTS.md
│
├── docs/
│   ├── 01-repository-structure.md
│   ├── agent-skills.md
│   ├── agent-subagents.md
│   ├── agent-governance-recovery.md
│   ├── architecture/
│   ├── diagrams/
│   ├── notes/
│   ├── rfc-notes/
│   ├── course-notes/
│   └── reviews/
│
├── src/
│   ├── 01-fundamentals/
│   │   ├── media-streams/
│   │   │   ├── 01-notes/
│   │   │   ├── 02-exercises/
│   │   │   ├── 03-implementations/
│   │   │   └── 04-discussions/
│   │   ├── peer-connection/
│   │   ├── rtc-data-channel/
│   │   └── ice-candidates/
│   │
│   ├── 02-signaling/
│   │   ├── websocket-signaling/
│   │   ├── socketio-signaling/
│   │   └── sdp-negotiation/
│   │
│   ├── 03-networking/
│   │   ├── stun/
│   │   ├── turn/
│   │   ├── nat-traversal/
│   │   └── coturn/
│   │
│   ├── 04-media/
│   │   ├── audio/
│   │   ├── video/
│   │   ├── screen-sharing/
│   │   └── codecs/
│   │
│   ├── 05-architecture/
│   │   ├── mesh/
│   │   ├── sfu/
│   │   ├── mcu/
│   │   └── recording/
│   │
│   ├── 06-small-projects/
│   │   ├── webcam-viewer/
│   │   ├── audio-call/
│   │   ├── video-call/
│   │   ├── chat-over-datachannel/
│   │   └── file-transfer/
│   │
│   ├── 07-medium-projects/
│   │   ├── group-video-chat/
│   │   ├── virtual-classroom/
│   │   ├── webinar-platform/
│   │   └── collaborative-whiteboard/
│   │
│   ├── 08-large-projects/
│   │   ├── zoom-clone/
│   │   ├── google-meet-clone/
│   │   ├── telemedicine-platform/
│   │   └── contact-center/
│   │
│   └── 09-production/
│       ├── monitoring/
│       ├── observability/
│       ├── security/
│       ├── scaling/
│       └── deployment/
│
├── experiments/
│   ├── bandwidth-testing/
│   ├── load-testing/
│   ├── codec-benchmarks/
│   └── packet-loss-simulation/
│
├── assets/
│   ├── images/
│   ├── diagrams/
│   └── videos/
│
└── tools/
    ├── pyscripts/
    └── psscripts/
```

## Four-layer topic modules

Each **topic folder** under `src/NN-category/` uses four companion subfolders:

| # | Subfolder | Role |
|---|-----------|------|
| 1 | `01-notes/` | Theory — first-person learning journey |
| 2 | `02-exercises/` | Self-assessment (original synthesis only) |
| 3 | `03-implementations/` | Runnable demos (HTML/JS/TS, Node signaling, etc.) |
| 4 | `04-discussions/` | Worked examples and architecture walkthroughs |

**Category folders** use numbered lowercase prefixes (`01-fundamentals/`, `02-signaling/`, …). **Topic folders** use kebab-case (`media-streams/`, `peer-connection/`, …).

**Learning flow:** Read notes → do exercises → build implementations → discuss examples.

When writing or updating public-facing structure (for example `README.md` or this file), do not list or mention any internal-only paths.
