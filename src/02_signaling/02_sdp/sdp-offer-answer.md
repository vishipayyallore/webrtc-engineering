# SDP offer and answer (my notes)

## Plain English

**SDP** is a text bundle that answers: which media lines exist, which codecs are offered, and where to send ICE candidates. In WebRTC I exchange SDP through my **signaling** channel—not over the media sockets themselves.

## Offer / answer roles

| Step | Side | What happens |
|------|------|----------------|
| 1 | Caller | Creates an **offer** SDP and sets local description |
| 2 | Callee | Sets remote description to the offer, creates an **answer**, sets local description |
| 3 | Both | Trickles **ICE candidates** while signaling stays up |

I treat the offer/answer state machine as strict: glares (both sides offer at once) need a policy; I learn the happy path first.

## What I look for in a blob (without memorizing every line)

- `m=audio` / `m=video` lines — which media sections exist
- `a=rtpmap` — codec choices
- `a=candidate` or trickle events — network paths (often outside SDP when trickling)
- `a=fingerprint` — DTLS cert for secure media

## Worked example (two tabs)

1. Tab A calls `createOffer()`, sends SDP text over my WebSocket server.
2. Tab B calls `setRemoteDescription(offer)`, `createAnswer()`, sends answer SDP back.
3. Both sides call `addIceCandidate` as candidates arrive.
4. When ICE completes, `connectionState` becomes `connected`.

## Real-world use case

A browser softphone registers with SIP over WebSocket; SDP still describes the session even when signaling format differs—the **pattern** (describe capabilities, exchange, agree) is the same idea.

## What I defer

Full SDP grammar and codec negotiation tables live in RFC 8866 territory—I cite the RFC when I need an exact attribute name, not from memory.
