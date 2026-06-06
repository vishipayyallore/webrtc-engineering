# Public addresses and home NAT

## Problem

Two people on residential Wi‑Fi each sit behind a router. Their laptops have **private** IPs; the internet only routes to the router’s **public** IP. For a direct call, ICE must discover usable **candidate** addresses on each side.

## What has to be true

Each endpoint needs a reachable description of where to send packets. Signaling carries those descriptions; ICE verifies they work.

## STUN and TURN in one line

- **STUN** — “help me learn my reflexive public mapping.”
- **TURN** — “if direct fails, send traffic through you.”

## Worked example

Two browsers in different countries may both get server-reflexive candidates via STUN. If UDP is blocked symmetrically, ICE elevates a **relay** candidate from TURN so audio still flows—higher latency, but the session stays up.

## What I will not do here

This note stops before SDP syntax and candidate types tables—I add those when I study `02_signaling/02_sdp` and implement `06_ice_candidates`.
