$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$assemblePath = Join-Path $PSScriptRoot "assemble-prompt.ps1"
$outPath = & $assemblePath
$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$runDir = Join-Path $root "runs\$stamp"

New-Item -ItemType Directory -Force -Path $runDir | Out-Null
Copy-Item -Path $outPath -Destination (Join-Path $runDir "master-prompt.md") -Force

if (Get-Command Set-Clipboard -ErrorAction SilentlyContinue) {
    Get-Content -Raw -Path $outPath | Set-Clipboard
}

Write-Host "Prompt ready: $outPath"
Write-Host "Run snapshot: $runDir"
if (Get-Command Set-Clipboard -ErrorAction SilentlyContinue) {
    Write-Host "Clipboard updated."
}
