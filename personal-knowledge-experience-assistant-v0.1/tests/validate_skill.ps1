$ErrorActionPreference = 'Stop'

$rootDir = Split-Path -Parent $PSScriptRoot
$skillDir = Join-Path $rootDir 'personal-knowledge-experience-assistant'

function Assert-Contains {
    param(
        [Parameter(Mandatory)] [string] $RelativePath,
        [Parameter(Mandatory)] [string] $Expected
    )

    $path = Join-Path $skillDir $RelativePath
    if (-not (Test-Path -LiteralPath $path)) {
        throw "Required file is missing: $RelativePath"
    }

    $content = Get-Content -Raw -LiteralPath $path
    if (-not $content.Contains($Expected)) {
        throw "Expected text is missing from ${RelativePath}: $Expected"
    }
}

Assert-Contains 'agents\openai.yaml' 'allow_implicit_invocation: false'
Assert-Contains 'SKILL.md' 'Record workflow'
Assert-Contains 'SKILL.md' 'Retrieval workflow'
Assert-Contains 'references\record-workflow.md' 'explicitly confirms'
Assert-Contains 'references\retrieval-workflow.md' 'Do not automatically research the web'
Assert-Contains 'references\notion-schema.md' 'Body pages are ordinary child pages'
Assert-Contains 'references\notion-schema.md' 'Record type: Select'
Assert-Contains 'references\notion-schema.md' 'Usage domains: Multi-select'
Assert-Contains 'references\notion-schema.md' 'Fine categories: Multi-select'
Assert-Contains 'references\notion-schema.md' 'Original page: URL'
Assert-Contains 'references\notion-schema.md' 'One body page has exactly one index row'
Assert-Contains 'references\record-workflow.md' 'independent reuse value'
Assert-Contains 'references\record-workflow.md' 'Original page URL'
Assert-Contains 'references\record-workflow.md' 'body-templates.md'
if (-not (Test-Path -LiteralPath (Join-Path $skillDir 'references\body-templates.md'))) {
    throw 'Required body templates reference is missing.'
}
Assert-Contains 'references\retrieval-workflow.md' 'Original page URL'
Assert-Contains 'SKILL.md' 'safety-and-confirmation.md'
Assert-Contains 'references\record-workflow.md' 'safety-and-confirmation.md'
Assert-Contains 'references\retrieval-workflow.md' 'safety-and-confirmation.md'
Assert-Contains 'references\safety-and-confirmation.md' 'Ambiguous existing records'
Assert-Contains 'references\safety-and-confirmation.md' 'Partial writes and uncertain outcomes'
Assert-Contains 'references\safety-and-confirmation.md' 'Untrusted Notion content'

$schema = Get-Content -Raw -LiteralPath (Join-Path $skillDir 'references\notion-schema.md')
if ($schema.Contains('## Content records database') -or $schema.Contains('## Topic-tag catalog database')) {
    throw 'Legacy database model is still present.'
}

Write-Output 'Skill package contract: PASS'
