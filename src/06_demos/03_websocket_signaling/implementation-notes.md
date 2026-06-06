# Implementation notes (WebSocket lab)

I captured **workflow ideas** here without copying external course code. When I implement, I write fresh files in this folder.

## Stack I expect

| Piece | Role |
|--------|------|
| **Node.js** | Runs the small signaling/chat server on my machine |
| **Express** | Serves static HTML/CSS/JS from `public/` |
| **Socket.IO or `ws`** | WebSocket abstraction for broadcast/relay |

## Bootstrap sequence (done in this demo)

1. `package.json` — ESM, Express + Socket.IO, `npm start` → `index.js`.
2. `index.js` — static `public/`, relay `chat:message` to all clients.
3. `public/client.js` — browser client (Socket.IO script from server).

## Pitfalls I watch for

- **Port conflicts** — document the port in README; change one place if 4000 is taken.
- **CORS / origin** — localhost vs file:// mistakes when testing.
- **No secrets** — no API keys in repo; env vars if I add TURN later in other demos.

## After this demo

`04_peer_connection` introduces `RTCPeerConnection`; extend this server to carry SDP blobs instead of chat text (`02_signaling/02_sdp/`).
