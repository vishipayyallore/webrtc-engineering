# Convert all PDFs under source-material/ to Markdown in the same folder as each PDF
# Requires: Python 3.12+ with pypdf installed locally (optional legacy utility)
# Usage (from repo root): .\tools\psscripts\Convert-SourceMaterialPdfsToMarkdown.ps1

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$scriptPath = Join-Path $repoRoot ".archive\tools\pyscripts\pdf_to_md.py"

if (-not (Test-Path $scriptPath)) {
    Write-Error "Legacy converter not found at $scriptPath"
}

Push-Location $repoRoot

try {
    python $scriptPath --input "source-material" --recursive --output-same-folder --allow-source-material-output
} finally {
    Pop-Location
}
