<#
.SYNOPSIS
  Exports an ASCII folder tree of the repository, skipping configured directories.

.DESCRIPTION
  Runs Windows tree.exe (/A /F), then removes entire subtrees whose folder name
  appears in -ExcludeDirNames. Line-only regex filters are not used because
  child lines do not repeat the parent folder name (e.g. .github/agents).

.PARAMETER RepoRoot
  Repository root to list. Defaults to the repo containing this script.

.PARAMETER OutFile
  Output text file path. Relative paths are resolved under RepoRoot.

.PARAMETER ExcludeDirNames
  Directory names to omit (exact match on +---name or \---name lines).

.EXAMPLE
  .\tools\psscripts\Export-RepoTree.ps1

.EXAMPLE
  .\tools\psscripts\Export-RepoTree.ps1 -OutFile .archive\folderstructure.txt
#>

[CmdletBinding()]
param(
  [string]$RepoRoot,
  [string]$OutFile = '.archive\folderstructure.txt',
  [string[]]$ExcludeDirNames = @(
    '.archive',
    '.git',
    '.github',
    '.cursor',
    '.claude',
    '.copilot',
    '.vs',
    '.vscode',
    'source-material',
    'node_modules',
    'bin',
    'obj',
    'dist',
    'coverage',
    'TestResults'
  )
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($RepoRoot)) {
  $scriptDir = if (-not [string]::IsNullOrWhiteSpace($PSScriptRoot)) {
    $PSScriptRoot
  } else {
    Split-Path -Parent $MyInvocation.MyCommand.Path
  }
  $RepoRoot = (Resolve-Path (Join-Path $scriptDir '..\..')).Path
} else {
  $RepoRoot = (Resolve-Path -LiteralPath $RepoRoot).Path
}

if ([System.IO.Path]::IsPathRooted($OutFile)) {
  $outPath = $OutFile
} else {
  $outPath = Join-Path $RepoRoot $OutFile
}

function Get-TreeIndent {
  param([string]$Line)
  if ($Line -match '^(?<pfx>.*?)(?:\+---|\\---)') {
    return $Matches['pfx'].Length
  }
  if ($Line -match '^(?<pfx>(?:\|   )+)') {
    return $Matches['pfx'].Length
  }
  return 0
}

$skipIndent = -1
$lines = New-Object System.Collections.Generic.List[string]

Push-Location -LiteralPath $RepoRoot
try {
  tree /A /F | ForEach-Object {
    $line = $_
    if ($line -match '^(Folder PATH|Volume serial)') {
      $lines.Add($line)
      return
    }
    if ($line -eq 'D:.') {
      $script:skipIndent = -1
      $lines.Add($line)
      return
    }
    $indent = Get-TreeIndent -Line $line
    if ($script:skipIndent -ge 0 -and $indent -gt $script:skipIndent) {
      return
    }
    $name = $null
    if ($line -match '(?:\+---|\\---)(.+?)\s*$') {
      $name = $Matches[1].Trim()
    }
    if ($script:skipIndent -ge 0 -and $indent -le $script:skipIndent) {
      $script:skipIndent = -1
    }
    if ($null -ne $name -and $name -in $ExcludeDirNames) {
      $script:skipIndent = $indent
      return
    }
    $lines.Add($line)
  }
} finally {
  Pop-Location
}

$parentDir = Split-Path -Parent $outPath
if (-not [string]::IsNullOrWhiteSpace($parentDir) -and -not (Test-Path -LiteralPath $parentDir)) {
  New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
}

$lines | Set-Content -LiteralPath $outPath -Encoding ascii

Write-Host "RepoRoot : $RepoRoot"
Write-Host "OutFile  : $outPath"
Write-Host "Lines    : $($lines.Count)"
Write-Host "Excluded : $($ExcludeDirNames -join ', ')"
