param(
    [string]$Target = "."
)

$ErrorActionPreference = "Stop"
$TargetPath = (Resolve-Path $Target).Path

function Test-ProjectFile([string]$Name) {
    return Test-Path (Join-Path $TargetPath $Name)
}

$stack = [ordered]@{
    language = @()
    frontend = @()
    backend = @()
    database = @()
    styling = @()
    package_manager = @()
    tooling = @()
}

if (Test-ProjectFile "package.json") {
    $stack.package_manager += if (Test-ProjectFile "pnpm-lock.yaml") { "pnpm" } elseif (Test-ProjectFile "yarn.lock") { "yarn" } elseif (Test-ProjectFile "bun.lockb" -or (Test-ProjectFile "bun.lock")) { "bun" } elseif (Test-ProjectFile "package-lock.json") { "npm" } else { "npm-or-unknown" }

    try {
        $pkg = Get-Content (Join-Path $TargetPath "package.json") -Raw | ConvertFrom-Json
        $deps = @{}
        if ($pkg.dependencies) { $pkg.dependencies.psobject.Properties | ForEach-Object { $deps[$_.Name] = $true } }
        if ($pkg.devDependencies) { $pkg.devDependencies.psobject.Properties | ForEach-Object { $deps[$_.Name] = $true } }

        if ($deps["next"]) { $stack.frontend += "Next.js" }
        if ($deps["react"]) { $stack.frontend += "React" }
        if ($deps["vue"]) { $stack.frontend += "Vue" }
        if ($deps["nuxt"]) { $stack.frontend += "Nuxt" }
        if ($deps["svelte"] -or $deps["@sveltejs/kit"]) { $stack.frontend += "Svelte/SvelteKit" }
        if ($deps["express"]) { $stack.backend += "Express" }
        if ($deps["fastify"]) { $stack.backend += "Fastify" }
        if ($deps["@nestjs/core"]) { $stack.backend += "NestJS" }
        if ($deps["tailwindcss"]) { $stack.styling += "Tailwind CSS" }
        if ($deps["typescript"]) { $stack.language += "TypeScript" }
        else { $stack.language += "JavaScript" }
        if ($deps["@supabase/supabase-js"]) { $stack.database += "Supabase" }
        if ($deps["prisma"] -or $deps["@prisma/client"]) { $stack.database += "Prisma" }
        if ($deps["drizzle-orm"]) { $stack.database += "Drizzle" }
    } catch {
        $stack.tooling += "package.json could not be parsed"
    }
}

if (Test-ProjectFile "composer.json") {
    $stack.package_manager += "Composer"
    $stack.language += "PHP"
    try {
        $composer = Get-Content (Join-Path $TargetPath "composer.json") -Raw | ConvertFrom-Json
        $all = @{}
        if ($composer.require) { $composer.require.psobject.Properties | ForEach-Object { $all[$_.Name] = $true } }
        if ($composer.'require-dev') { $composer.'require-dev'.psobject.Properties | ForEach-Object { $all[$_.Name] = $true } }
        if ($all["laravel/framework"]) { $stack.backend += "Laravel" }
    } catch {
        $stack.tooling += "composer.json could not be parsed"
    }
}

if (Test-ProjectFile "requirements.txt" -or Test-ProjectFile "pyproject.toml" -or Test-ProjectFile "Pipfile") {
    $stack.language += "Python"
    $stack.package_manager += "Python package manager"
}

if (Test-ProjectFile "go.mod") { $stack.language += "Go"; $stack.tooling += "Go modules" }
if (Test-ProjectFile "Cargo.toml") { $stack.language += "Rust"; $stack.tooling += "Cargo" }
if (Test-ProjectFile "Dockerfile") { $stack.tooling += "Docker" }
if (Test-ProjectFile ".github") { $stack.tooling += "GitHub Actions or GitHub configuration" }
if (Test-ProjectFile "supabase") { $stack.database += "Supabase project directory" }
if (Test-ProjectFile "prisma") { $stack.database += "Prisma schema/migrations" }
if (Test-ProjectFile "migrations") { $stack.database += "Migration directory" }

foreach ($key in @($stack.Keys)) {
    $stack[$key] = @($stack[$key] | Select-Object -Unique)
}

$result = [ordered]@{
    path = $TargetPath
    detected = $stack
}

$result | ConvertTo-Json -Depth 5
