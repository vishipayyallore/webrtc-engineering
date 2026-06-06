# What signaling does

## Plain English

Signaling is the **coordination channel** before media flows. It answers questions like: Who is calling whom? Did the callee accept? What session description and network candidates should each side try?

WebRTC intentionally **does not** mandate how signaling messages look—that is my application protocol.

## Worked example (two browsers)

1. Caller clicks “Start video.”
2. Callee sees an incoming request and accepts.
3. Both sides exchange SDP offers/answers and ICE candidates through a server both already trust (WebSocket, HTTPS long poll, etc.).
4. Only after that exchange does ICE run and media start.

## What signaling is not

- It is **not** the video stream itself.
- It should **not** carry high-rate media for production calls (that belongs on peer or TURN paths).

## Tie-in to my demos

I practice the transport first in `06_demos/03_websocket_signaling`, then attach WebRTC metadata in later demos (`05_offer_answer`, `06_ice_candidates`).

## Real-world use case

A contact-center browser softphone: signaling rides on the company’s existing authenticated socket; media may still peer or relay depending on corporate firewall rules.
