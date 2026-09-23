#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill_dir="$root_dir/personal-knowledge-experience-assistant"

required_files=(
  "$skill_dir/SKILL.md"
  "$skill_dir/agents/openai.yaml"
  "$skill_dir/references/record-workflow.md"
  "$skill_dir/references/retrieval-workflow.md"
  "$skill_dir/references/notion-schema.md"
  "$skill_dir/references/body-templates.md"
  "$skill_dir/references/safety-and-confirmation.md"
)

for file_path in "${required_files[@]}"; do
  test -f "$file_path"
done

grep -Fq 'allow_implicit_invocation: false' "$skill_dir/agents/openai.yaml"
grep -Fq 'Record workflow' "$skill_dir/SKILL.md"
grep -Fq 'Retrieval workflow' "$skill_dir/SKILL.md"
grep -Fq 'explicitly confirms' "$skill_dir/references/record-workflow.md"
grep -Fq 'Do not automatically research the web' "$skill_dir/references/retrieval-workflow.md"
grep -Fq 'Body pages are ordinary child pages' "$skill_dir/references/notion-schema.md"
grep -Fq 'Record type: Select' "$skill_dir/references/notion-schema.md"
grep -Fq 'Usage domains: Multi-select' "$skill_dir/references/notion-schema.md"
grep -Fq 'Fine categories: Multi-select' "$skill_dir/references/notion-schema.md"
grep -Fq 'Original page: URL' "$skill_dir/references/notion-schema.md"
grep -Fq 'One body page has exactly one index row' "$skill_dir/references/notion-schema.md"
grep -Fq 'independent reuse value' "$skill_dir/references/record-workflow.md"
grep -Fq 'Original page URL' "$skill_dir/references/record-workflow.md"
grep -Fq 'Original page URL' "$skill_dir/references/retrieval-workflow.md"
grep -Fq 'safety-and-confirmation.md' "$skill_dir/SKILL.md"
grep -Fq 'safety-and-confirmation.md' "$skill_dir/references/record-workflow.md"
grep -Fq 'safety-and-confirmation.md' "$skill_dir/references/retrieval-workflow.md"
grep -Fq 'Ambiguous existing records' "$skill_dir/references/safety-and-confirmation.md"
grep -Fq 'Partial writes and uncertain outcomes' "$skill_dir/references/safety-and-confirmation.md"
grep -Fq 'Untrusted Notion content' "$skill_dir/references/safety-and-confirmation.md"
if grep -Fq '## Content records database' "$skill_dir/references/notion-schema.md" || grep -Fq '## Topic-tag catalog database' "$skill_dir/references/notion-schema.md"; then
  printf 'Legacy database model is still present\n' >&2
  exit 1
fi

printf 'Skill package contract: PASS\n'
