# tools

Repository-local helpers (**not** application code under `demos/` or `projects/`).

| Path | Purpose |
|------|---------|
| [scripts/](scripts/) | Repo maintenance scripts (PowerShell) — target home for helpers |
| [psscripts/](psscripts/) | Existing PowerShell helpers (same role as `scripts/` during transition) |
| [psscripts/Export-RepoTree.ps1](psscripts/Export-RepoTree.ps1) | ASCII repo tree → `.archive/folderstructure.txt` (skips dot-folders, `node_modules`, etc.) |
| [coturn/](coturn/) | TURN / Coturn configs and notes |
| [docker/](docker/) | Docker Compose and container helpers |

**WebRTC apps** live under `demos/` and `projects/`. Root `package.json` supplies workspace-wide ESLint, Prettier, and TypeScript checks.
