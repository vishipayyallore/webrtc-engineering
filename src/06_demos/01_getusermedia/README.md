# Demo 01 — getUserMedia

## Purpose

I'm learning how to ask the browser for camera and microphone access and attach tracks to a local preview — the first step before any peer connection.

## Run steps

1. Open this folder when implementation files exist (`package.json` or static `public/` page).
2. Serve over **localhost** or **HTTPS** (browser requirement for `getUserMedia`).
3. Grant camera/mic permission when prompted.

```powershell
# From repo root, after this demo has a start script:
cd src/06_demos/01_getusermedia
npm install
npm start
```

*(Commands apply once app code is added.)*

## Concepts

**Plain English:** `getUserMedia` is the API that returns a **MediaStream** — one or more tracks (audio/video) I can play locally or send to a peer later.

**Use case:** Joining a telehealth visit and checking my camera preview before the call connects.

## Next in path

`02_local_video_preview` — refine preview UI and track handling.

## Status

Scaffold only — implementation not started yet.
