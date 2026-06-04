# tools

Repository-local helpers (**not** application code under `demos/` or `projects/`).

| Path | Purpose |
|------|---------|
| [scripts/](scripts/) | Repo maintenance scripts (PowerShell) — target home for helpers |
| [psscripts/](psscripts/) | Existing PowerShell helpers (same role as `scripts/` during transition) |
| [coturn/](coturn/) | TURN / Coturn configs and notes |
| [docker/](docker/) | Docker Compose and container helpers |

**WebRTC apps** live under `demos/` and `projects/`. Root `package.json` supplies workspace-wide ESLint, Prettier, and TypeScript checks.
