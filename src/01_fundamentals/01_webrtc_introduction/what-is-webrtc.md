# What WebRTC is (my summary)

## Plain English

WebRTC is a set of browser and platform APIs that let applications move **live** data—text, audio, video, or arbitrary binary payloads—with **low delay**. The “RTC” part means *real-time communication*: the other side should see or hear updates soon after I send them, not after a long poll or manual refresh.

## Where I see it in the wild

Video meetings, voice channels, in-browser screen share, file transfer between tabs, and some cloud gaming streams all lean on the same family of ideas WebRTC standardizes.

## “Is it peer-to-peer?”

**Partly.** Media between browsers is often designed to flow **directly** once a path exists. But I still need **infrastructure** for setup:

- Something to coordinate “who is calling whom” (signaling).
- Help discovering reachable network addresses (STUN, ICE).
- A relay when direct paths fail (TURN).

So I treat “WebRTC is P2P” as shorthand for **media may be peer-to-peer**, not “my app has zero servers.”

## Four phases I keep in mind

Later I expand this in `02_webrtc_architecture/four-steps.md`:

1. **Signaling** — agree to start a session and swap metadata.
2. **Connecting** — find network paths (ICE).
3. **Securing** — encrypt streams (DTLS-SRTP and related pieces).
4. **Communicating** — send media or data on established channels.

## Real-world anchor

A two-person telehealth check-in: signaling sets up the call, ICE hunts for a workable route, and only then do encrypted audio/video flow between endpoints—with TURN as backup if home routers refuse a direct hole punch.
