# Why WebRTC exists

## The old pattern: everything through my server

In classic web chat or early video products, **my server** often carried every byte between users. That is simple to reason about: clients only talk to endpoints I control.

## Why that breaks at scale for live media

For voice and video, the server would have to **receive and re-send** high-bitrate streams for every participant. At large concurrency, bandwidth and CPU on central machines dominate cost. Spikes in remote work and live usage made “relay everything” economically painful.

## The design goal

Engineers wanted endpoints to exchange live data **without a central relay for every media packet** when the network allows it. Benefits I care about:

- **Lower relay cost** when direct paths work.
- **Shorter paths** potentially reducing latency.
- **Less centralized inspection** of raw media (still not anonymity—signaling and TURN remain).

## What actually shipped

Browsers got a standardized stack, but **servers did not disappear**. I still run signaling, STUN/TURN, and often SFUs for groups. WebRTC is a compromise: **standardized peer media** plus **practical fallbacks**.

## Why I am studying it now

Real-time products are default expectations. Understanding WebRTC means I can debug calls that fail on hotel Wi‑Fi, explain why TURN bills show up, and design apps that degrade gracefully instead of failing silently.
