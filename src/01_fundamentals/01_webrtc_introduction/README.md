# WebRTC introduction

## Purpose

I'm capturing what WebRTC is for in my own words before I wire up APIs in later demos.

## Concepts

**Plain English:** WebRTC lets a browser (or Node with the right stack) send audio, video, or arbitrary data **directly** to another peer when possible, instead of always relaying everything through my server.

**Use case:** A two-person video call in the browser — the call still needs a small signaling channel to exchange connection metadata, but media can flow peer-to-peer once ICE finds a path.

## What I plan to cover here

- How this module fits the path: `01_fundamentals` → … → `06_demos`
- Browser vs server roles (signaling vs media)
- Permissions and HTTPS / localhost constraints for camera and mic

## Status

Notes placeholder — I'll expand as I study and synthesize (zero-copy: my own wording only).
