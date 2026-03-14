$ErrorActionPreference = 'Stop'

$scriptPath = Join-Path $PSScriptRoot '..\scripts\build.ps1'
$output = & $scriptPath 6>&1 | Out-String

if ($output -notmatch 'Building the project\.\.\.') {
    throw "Expected build script output was not emitted. Output=[$output]"
}

Write-Host 'build tests passed'
