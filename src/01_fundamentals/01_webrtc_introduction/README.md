# WebRTC introduction

## Purpose

I'm building a clear mental model of what WebRTC is before I touch APIs in `06_demos`.

## Modules in this folder

| Note | Topic |
|------|--------|
| [what-is-webrtc.md](what-is-webrtc.md) | Definition, use cases, “peer-to-peer” nuance |
| [why-webrtc-exists.md](why-webrtc-exists.md) | Why the web needed a real-time stack |
| [prerequisites.md](prerequisites.md) | Skills I assume before deeper work |

## Where this fits

```text
01_webrtc_introduction  →  02_webrtc_architecture  →  …  →  06_demos
```

## Status

Synthesized study notes (my wording). Runnable code lives under `src/06_demos/` later in the path.

<!-- No problem. Let me simplify it.

You asked:

> "What should be the numbering/order of files in incremental learning?"

I mean:

## Phase 1 — Foundation

Read/write these first:

```text
01_fundamentals/
│
├── 01_webrtc_introduction
│   ├── prerequisites.md                ✅ Done
│   ├── why-webrtc-exists.md            ✅ Done
│   └── what-is-webrtc.md               ✅ Done
│
├── 02_webrtc_architecture
│   ├── four-steps.md                   ⬅️ NEXT
│   └── connection-lifecycle.md
│
├── 03_webrtc_terminology
│   └── glossary.md
│
└── 04_debugging_tools
    ├── chrome-webrtc-internals.md
    └── firefox-about-webrtc.md
```

### Recommended next file

```text
four-steps.md
```

because your current note already says:

```text
1. Signaling
2. Connecting
3. Securing
4. Communicating
```

Now we expand those four ideas.

---

## Phase 2 — Signaling

After understanding the 4 steps:

```text
02_signaling/
│
├── 01_request_response_vs_realtime.md
├── 02_websockets.md
├── 03_signaling_server.md
├── 04_sdp.md
└── 05_offer_answer.md
```

Learning flow:

```text
HTTP
  ↓
WebSockets
  ↓
Signaling Server
  ↓
SDP
  ↓
Offer / Answer
```

---

## Phase 3 — Networking

Only after SDP.

```text
03_networking/
│
├── 01_nat_traversal.md
├── 02_ice.md
├── 03_stun.md
├── 04_turn.md
├── 05_dtls.md
├── 06_srtp.md
├── 07_certificate_management.md
└── 08_connectivity_lifecycle.md
```

Learning flow:

```text
NAT Problem
     ↓
ICE
     ↓
STUN
     ↓
TURN
     ↓
DTLS
     ↓
SRTP
```

---

## Phase 4 — Browser APIs

Only now do browser APIs make sense.

```text
06_browser_apis/
│
├── 01_get_user_media.md
├── 02_media_stream.md
├── 03_rtc_peer_connection.md
├── 04_rtc_data_channel.md
└── 06_webrtc_stats_api.md
```

Because now you'll know:

```text
RTCPeerConnection
```

is just a wrapper around:

```text
SDP
ICE
DTLS
SRTP
```

instead of a magic object.

---

## My Suggested Next 10 Files

If I were guiding your repository, I would create these next:

```text
01. four-steps.md
02. connection-lifecycle.md
03. glossary.md
04. request-response-vs-realtime.md
05. websockets.md
06. signaling-server.md
07. sdp.md
08. offer-answer.md
09. nat-traversal.md
10. ice.md
```

---

## About the Other AI Suggestions

I agree with these additions:

### Add to `why-webrtc-exists.md`

```text
TCP vs UDP
```

Why?

Because WebRTC exists not only for scalability but also because:

```text
TCP
 ↓
Wait for lost packet

UDP
 ↓
Keep moving
```

For video calls, dropping one frame is usually better than freezing.

---

### Add to `prerequisites.md`

```text
Browser DevTools
```

because before using:

```text
chrome://webrtc-internals
```

you'll spend lots of time in:

```text
F12
 ├─ Console
 ├─ Network
 └─ Sources
```

---

### Add to `what-is-webrtc.md`

Additional examples:

```text
Remote cameras
Drones
Robotics
IoT devices
```

because WebRTC is much bigger than video meetings.

---

### My immediate recommendation

Don't work on the glossary next.

Work on:

```text
01_fundamentals/
└── 02_webrtc_architecture/
    └── four-steps.md
```

That is the natural next chapter after the three files you've already completed. -->
