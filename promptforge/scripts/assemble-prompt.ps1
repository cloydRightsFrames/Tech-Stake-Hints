$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$promptDir = Join-Path $root "prompts"
$specPath = Join-Path $root "project\system-description.md"
$outPath = Join-Path $root "output\master-prompt.md"

$sections = New-Object System.Collections.Generic.List[string]
$sections.Add("# PromptForge Master Prompt")
$sections.Add("")
$sections.Add("## System Description")
$sections.Add((Get-Content -Raw -Path $specPath).TrimEnd())

Get-ChildItem -Path $promptDir -File | Sort-Object Name | ForEach-Object {
    $sections.Add("")
    $sections.Add("## $($_.BaseName)")
    $sections.Add((Get-Content -Raw -Path $_.FullName).TrimEnd())
}

Set-Content -Path $outPath -Value ($sections -join [Environment]::NewLine) -Encoding UTF8
Write-Output $outPath
