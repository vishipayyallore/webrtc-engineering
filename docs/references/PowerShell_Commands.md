# PowerShell — repo folder tree

## Recommended: `Export-RepoTree.ps1`

From the repo root:

```powershell
.\tools\psscripts\Export-RepoTree.ps1
```

Writes **`.archive\folderstructure.txt`** (ASCII, files included, excluded subtrees removed).

Custom output path:

```powershell
.\tools\psscripts\Export-RepoTree.ps1 -OutFile .archive\folderstructure.txt
```

Custom excludes (replaces the default list):

```powershell
.\tools\psscripts\Export-RepoTree.ps1 -ExcludeDirNames @('.git', 'node_modules')
```

Default excluded folder names: `.archive`, `.git`, `.github`, `.cursor`, `.claude`, `.copilot`, `.vs`, `.vscode`, `source-material`, `node_modules`, `bin`, `obj`, `dist`, `coverage`, `TestResults`.

## Why not `Get-ChildItem | tree`

- **`tree` ignores the pipeline** — it always walks the current directory.
- **`-Exclude` on `Get-ChildItem` is shallow** — not whole subtrees.
- **Line-only `-notmatch` fails** — drops `+---.github` but keeps `copilot-instructions.md` and other children.

The script runs **`tree /A /F`**, then skips **entire subtrees** by indent when a folder name is in the exclude list.

## Implementation

See `tools/psscripts/Export-RepoTree.ps1`.
