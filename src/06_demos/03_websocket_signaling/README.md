# Demo 03 — WebSocket signaling

## Purpose

I'm building a small **real-time messaging** lab to understand bidirectional sockets before I attach WebRTC session metadata. The same server shape later forwards SDP and ICE JSON.

## Why this demo exists in the path

```text
01_getusermedia → 02_local_video_preview → 03_websocket_signaling → 04_peer_connection
```

Concept notes: `src/02_signaling/01_websockets/`.

## Run steps

1. Node 20+ installed.
2. From this folder:

```powershell
npm install
npm start
```

3. Open **http://localhost:4000** (override with `$env:PORT=3000` if needed).
4. Open a **second browser tab** (or another machine on the same LAN with the right host binding later) and send messages—both sides should see lines immediately.

## Concepts

**Plain English:** A WebSocket keeps one pipe open so server and browser can push events without repeating HTTP request/response cycles—ideal for “callee accepted” and later “here is an ICE candidate” messages.

## Layout

| File | Role |
|------|------|
| `index.js` | Express static server + Socket.IO relay |
| `public/index.html` | Minimal chat UI |
| `public/client.js` | Emits `chat:message` events |

## Next in path

`04_peer_connection` — introduce `RTCPeerConnection`; this server can later relay SDP blobs instead of chat text.
