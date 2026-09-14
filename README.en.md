# Personal Knowledge & Productivity Skill for Codex and ChatGPT

**[简体中文](README.md) | English**

A personal Codex skill for recording selected knowledge and experience from a conversation in a configured Notion knowledge base, or retrieving existing records.

## Usage

Place the repository files in a Codex skill directory named `personal-knowledge-experience-assistant`, and configure a Notion connection with access to the target knowledge base. Invoke the skill explicitly with `$personal-knowledge-experience-assistant`.

Before recording anything, the skill presents the proposed record and asks for confirmation. Installing or loading the skill alone does not access or modify Notion.

## Files

- `SKILL.md`: invocation conditions and workflow rules
- `agents/openai.yaml`: display information and tool dependency
- `references/`: recording, retrieval, page structure, and confirmation rules

This repository contains no Notion login credentials. The configured page locations apply only to the corresponding personal knowledge base.
