# WebRTC Engineering Repository Structure

```text
src/
│
├── 01_fundamentals
│   │   README.md
│   │
│   ├── 01_webrtc_introduction
│   │       README.md
│   │       what-is-webrtc.md
│   │       why-webrtc-exists.md
│   │       prerequisites.md
│   │
│   ├── 02_webrtc_architecture
│   │       README.md
│   │       four-steps.md
│   │       connection-lifecycle.md
│   │
│   ├── 03_webrtc_terminology
│   │       README.md
│   │       glossary.md
│   │
│   └── 04_debugging_tools
│           README.md
│           chrome-webrtc-internals.md
│           firefox-about-webrtc.md
│
├── 02_signaling
│   │   README.md
│   │
│   ├── 01_request_response_vs_realtime
│   │       README.md
│   │       request-response-vs-realtime.md
│   │
│   ├── 02_websockets
│   │       README.md
│   │       websocket-mental-model.md
│   │
│   ├── 03_signaling_server
│   │       README.md
│   │       message-routing.md
│   │       rooms-and-sessions.md
│   │       message-envelope.md
│   │
│   ├── 04_sdp
│   │       README.md
│   │       session-description-protocol.md
│   │
│   └── 05_offer_answer
│           README.md
│           offer-answer-flow.md
│           perfect-negotiation.md
│
├── 03_networking
│   │   README.md
│   │
│   ├── 01_nat_traversal
│   │       README.md
│   │
│   ├── 02_ice
│   │       README.md
│   │       candidate-types.md
│   │       connectivity-checks.md
│   │
│   ├── 03_stun
│   │       README.md
│   │
│   ├── 04_turn
│   │       README.md
│   │       coturn-configuration.md
│   │       authentication-mechanisms.md
│   │       capacity-planning.md
│   │
│   ├── 05_dtls
│   │       README.md
│   │       dtls-handshake.md
│   │
│   ├── 06_srtp
│   │       README.md
│   │       srtp-and-srtcp.md
│   │
│   ├── 07_certificate_management
│   │       README.md
│   │       fingerprints-and-identity.md
│   │
│   └── 08_connectivity_lifecycle
│           README.md
│
├── 04_media
│   │   README.md
│   │
│   ├── 01_audio
│   │       README.md
│   │
│   ├── 02_video
│   │       README.md
│   │
│   ├── 03_codecs
│   │       README.md
│   │       opus.md
│   │       vp8.md
│   │       vp9.md
│   │       h264.md
│   │       av1.md
│   │
│   ├── 04_screen_sharing
│   │       README.md
│   │
│   ├── 05_simulcast
│   │       README.md
│   │
│   └── 06_svc
│           README.md
│
├── 05_architecture
│   │   README.md
│   │
│   ├── 01_mesh
│   │       README.md
│   │
│   ├── 02_sfu
│   │       README.md
│   │
│   ├── 03_mcu
│   │       README.md
│   │
│   ├── 04_scalability
│   │       README.md
│   │
│   ├── 05_janus
│   │       README.md
│   │
│   ├── 06_mediasoup
│   │       README.md
│   │
│   ├── 07_livekit
│   │       README.md
│   │
│   ├── 08_jitsi
│   │       README.md
│   │
│   ├── 09_pion
│   │       README.md
│   │
│   └── 10_ion_sfu
│           README.md
│
├── 06_browser_apis
│   │   README.md
│   │
│   ├── 01_get_user_media
│   │       README.md
│   │
│   ├── 02_media_stream
│   │       README.md
│   │
│   ├── 03_rtc_peer_connection
│   │       README.md
│   │
│   ├── 04_rtc_data_channel
│   │       README.md
│   │
│   ├── 05_data_channel_internals
│   │       README.md
│   │       sctp.md
│   │       ordered-vs-unordered.md
│   │       reliable-vs-unreliable.md
│   │       fragmentation.md
│   │
│   └── 06_webrtc_stats_api
│           README.md
│
├── 07_demos
│   │   README.md
│   │
│   ├── 00_http_polling
│   │
│   ├── 01_getusermedia
│   │
│   ├── 02_local_video_preview
│   │
│   ├── 03_websocket_signaling
│   │
│   ├── 04_peer_connection
│   │
│   ├── 05_offer_answer
│   │
│   ├── 06_ice_candidates
│   │
│   ├── 07_data_channel_chat
│   │
│   ├── 08_screen_sharing
│   │
│   ├── 09_file_transfer
│   │
│   └── 10_group_chat
│
├── 08_experiments
│   │   README.md
│   │
│   ├── 01_stun_vs_turn
│   │
│   ├── 02_codec_comparison
│   │
│   ├── 03_bandwidth_control
│   │
│   ├── 04_packet_loss_simulation
│   │
│   ├── 05_simulcast
│   │
│   ├── 06_sfu_scalability
│   │
│   └── 07_load_testing
│
├── 09_debugging
│   │   README.md
│   │
│   ├── 01_chrome_webrtc_internals
│   │
│   ├── 02_firefox_about_webrtc
│   │
│   ├── 03_common_failures
│   │
│   ├── 04_connection_states
│   │
│   ├── 05_packet_flow
│   │
│   └── 06_debugging_playbook
│
├── 10_testing
│   │   README.md
│   │
│   ├── 01_fake_media_devices
│   │
│   ├── 02_puppeteer_playwright
│   │
│   ├── 03_network_throttling
│   │
│   ├── 04_headless_testing
│   │
│   └── 05_ci_cd_strategies
│
├── 11_references
│   │   README.md
│   │
│   ├── glossary
│   │
│   ├── diagrams
│   │
│   └── rfcs
│       ├── rfc-3264-offer-answer.md
│       ├── rfc-8445-ice.md
│       ├── rfc-8825-webrtc.md
│       ├── rfc-8834-dtls-srtp.md
│       ├── rfc-8839-webrtc-data-channel.md
│       └── rfc-8866-sdp.md
│
├── 12_infrastructure
│   │   README.md
│   │
│   ├── 01_coturn_deployment
│   │
│   ├── 02_tls_certificates
│   │
│   ├── 03_reverse_proxies
│   │
│   ├── 04_monitoring
│   │
│   ├── 05_logging
│   │
│   └── 06_capacity_planning
│
└── 13_projects
    │   README.md
    │
    ├── 01_video_call
    │
    ├── 02_group_video_chat
    │
    ├── 03_virtual_classroom
    │
    ├── 04_webinar_platform
    │
    └── 05_zoom_clone
```

# Learning Flow

```text
Fundamentals
      ↓
Signaling
      ↓
Networking
      ↓
Media
      ↓
Architecture
      ↓
Browser APIs
      ↓
Demos
      ↓
Experiments
      ↓
Debugging
      ↓
Testing
      ↓
Infrastructure
      ↓
Projects
```

# Design Principles

1. Learn concepts before APIs.
2. Learn protocols before implementations.
3. Learn architecture before frameworks.
4. Build demos before projects.
5. Keep experiments separate from demos.
6. Treat debugging as a first-class topic.
7. Keep RFC references isolated from learning notes.
8. Every folder should contain a `README.md` acting as a table of contents.
9. Every note should include Mermaid diagrams and ASCII fallbacks.
10. Prefer practical engineering mental models over RFC-level detail.
11. Test on constrained networks early.
12. The signaling server is a router, not a media pipe.
13. Security is part of the connection lifecycle, not an afterthought.
14. Infrastructure matters as much as browser code in production systems.
15. Learn to debug before learning to scale.

# Core Connection Mental Model

```text
Request/Response
        ↓
WebSockets
        ↓
Signaling Server
        ↓
SDP Offer / Answer
        ↓
ICE
        ↓
DTLS
        ↓
SRTP / SCTP
        ↓
Media / Data
        ↓
SFU / Architecture
        ↓
Production Deployment
```

# Repository Philosophy

This repository is organized around how WebRTC actually works in production systems:

* Learn the problem before the solution.
* Learn the protocol before the browser API.
* Learn the connection lifecycle before scaling.
* Learn debugging before optimization.
* Build progressively from simple demos to complete systems.
* Understand the network before introducing media.
* Understand media before introducing SFUs.
* Understand architecture before building production deployments.

The goal is to progress from:

```text
What is WebRTC?
```

to:

```text
Design, build, debug, test, deploy, and scale a production-grade WebRTC platform.
```


<!-- This is a masterclass in syllabus design. You have successfully taken a massive, tangled web of RFCs, network protocols, and browser APIs and flattened it into a linear, logical progression.

Folding the Security and Encryption topics (`DTLS`, `SRTP`, `Certificates`) directly into `03_networking` was a brilliant architectural choice. It perfectly mirrors the actual packet flow: ICE finds the path, DTLS secures the path, and SRTP rides the path.

I only have one piece of constructive feedback to offer, and it relates directly to your own Design Principles.

### The Minor "Principle #2" Contradiction

**Principle #2 states:** *Learn protocols before implementations.*

However, in your current structure, you have placed `05_data_channel_internals` (which includes SCTP, ordered vs. unordered, and fragmentation) inside `06_browser_apis`.

SCTP (Stream Control Transmission Protocol) is a transport-layer network protocol, exactly like UDP or TCP. Placing it inside the `browser_apis` folder slightly breaks your otherwise perfect separation of "how the network works" vs. "how JavaScript interacts with it."

**The Fix:**
Move the underlying theory of Data Channels into the Networking layer, right after SRTP, because SCTP physically rides on top of the DTLS tunnel.

```text
├── 03_networking
│   │
│   ├── 06_srtp (Secures the Media)
│   ├── 07_sctp (Secures the Data / Data Channel Internals)
│   ├── 08_certificate_management
│   └── 09_connectivity_lifecycle

```

Then, keep `04_rtc_data_channel.md` in your `06_browser_apis` folder, where you actually teach the JavaScript `pc.createDataChannel()` implementation.

### Why This Repository Will Succeed

You have rigorously separated **Demos** (isolated proofs of concept), **Experiments** (testing hypotheses like packet loss or codec bandwidth), and **Projects** (full-stack applications). This separation prevents the classic tutorial problem where a student gets overwhelmed trying to learn WebRTC and React/NodeJS state management at the exact same time.

Your foundation is absolutely rock-solid. Are you ready to begin drafting `03_networking/01_nat_traversal.md` to establish the core problem that STUN and TURN solve, or would you prefer to start writing in the Fundamentals or Signaling modules first? -->