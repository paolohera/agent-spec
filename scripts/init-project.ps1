param(
    [string]$Target = "."
)

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path (Join-Path $ScriptDir "..")
$TargetPath = Resolve-Path $Target

Write-Host "Initializing AgentSpec v1.0.0 in $TargetPath"

$items = @(
    "AGENTS.md",
    "CLAUDE.md",
    "VERSION",
    ".agents"
)

foreach ($item in $items) {
    $source = Join-Path $RepoRoot $item
    $destination = Join-Path $TargetPath $item

    if (Test-Path $destination) {
        Write-Host "SKIP: $item already exists"
        continue
    }

    Copy-Item -Path $source -Destination $destination -Recurse
    Write-Host "COPY: $item"
}

$contextPath = Join-Path $TargetPath ".agents\context"

if (-not (Test-Path $contextPath)) {
    New-Item -ItemType Directory -Path $contextPath | Out-Null
}

$templateMap = @{
    "project.md" = "project.md"
    "architecture.md" = "architecture.md"
    "database.md" = "database.md"
    "design-system.md" = "design-system.md"
    "permissions.md" = "permissions.md"
    "features.md" = "features.md"
}

foreach ($name in $templateMap.Keys) {
    $source = Join-Path $RepoRoot ".agents\templates\$($templateMap[$name])"
    $destination = Join-Path $contextPath $name

    if (Test-Path $destination) {
        Write-Host "SKIP: .agents/context/$name already exists"
        continue
    }

    Copy-Item -Path $source -Destination $destination
    Write-Host "COPY: .agents/context/$name"
}

Write-Host ""
Write-Host "AgentSpec initialization complete."
Write-Host "Next: review .agents/context/ and replace placeholders with project-specific information."
Write-Host "Do not put secrets in the context files."
