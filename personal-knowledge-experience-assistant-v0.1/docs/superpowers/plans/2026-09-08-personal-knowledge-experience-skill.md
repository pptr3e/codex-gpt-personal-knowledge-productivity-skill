# Personal Knowledge & Experience Assistant Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Deliver an explicit-only Codex Skill package that records or retrieves personal knowledge and lightweight tasks through Notion.

**Architecture:** The package keeps the invocation policy and shared safety rules in `SKILL.md`, while record and retrieval procedures live in separate references. A Notion schema reference provides a stable field contract without creating or altering a live workspace until the user explicitly identifies a target location.

**Tech Stack:** Markdown, YAML, Bash validation script.

**Spec:** `work/docs/approved-design-summary.md`

## Global Constraints

- Run only when explicitly invoked as `$personal-knowledge-experience-assistant`.
- Never access Notion in ordinary GPT conversations.
- In record mode, search related material before presenting a plan, but do not write until the user explicitly confirms.
- Give each Notion page exactly one record type: `问题经验`, `知识卡片`, or `任务`.
- Treat `科研`, `工作`, `生活`, and `工具` as multi-select usage-domain tags rather than a folder hierarchy.
- When incident-specific experience and independently reusable knowledge coexist, split them into linked pages and make the problem experience cite the knowledge card.
- Keep tasks lightweight: title, background, classification, relations, status, and timestamp only.
- Do not create, modify, or migrate any Notion database until the user provides a target workspace/page and confirms the write.
- Preserve historical conclusions when new material conflicts with them.

---

### Task 1: Create the approved-design summary and package contract

**Files:**
- Create: `work/docs/approved-design-summary.md`
- Create: `work/README.md`

**Interfaces:**
- Produces: Scope and file map used by the skill, schema reference, and validation checks.

- [ ] **Step 1: Describe the confirmed first-release scope**
- [ ] **Step 2: Describe package contents and the live-Notion boundary**
- [ ] **Step 3: Review for scope additions and remove any that are not approved**

### Task 2: Add a failing package-contract test

**Files:**
- Create: `work/tests/validate_skill.sh`

**Interfaces:**
- Consumes: `work/personal-knowledge-experience-assistant/`
- Produces: Exit status 0 only when the package contains explicit-only policy, both workflows, and all schema fields.

- [ ] **Step 1: Write checks for required files and required policy/workflow markers**
- [ ] **Step 2: Run `bash work/tests/validate_skill.sh` before creating the package**
- [ ] **Step 3: Confirm it fails because the package is missing**

### Task 3: Implement the Skill package

**Files:**
- Create: `work/personal-knowledge-experience-assistant/SKILL.md`
- Create: `work/personal-knowledge-experience-assistant/agents/openai.yaml`
- Create: `work/personal-knowledge-experience-assistant/references/record-workflow.md`
- Create: `work/personal-knowledge-experience-assistant/references/retrieval-workflow.md`
- Create: `work/personal-knowledge-experience-assistant/references/notion-schema.md`

**Interfaces:**
- Consumes: The request the user gives after selecting `$personal-knowledge-experience-assistant`.
- Produces: Either a proposed recording plan awaiting confirmation, a verified Notion write result, or a retrieval result with source links.

- [ ] **Step 1: Create metadata with `allow_implicit_invocation: false`**
- [ ] **Step 2: Implement concise common routing rules in `SKILL.md`**
- [ ] **Step 3: Implement record workflow with plan-before-write and conditional splitting**
- [ ] **Step 4: Implement retrieval workflow without automatic external research**
- [ ] **Step 5: Implement a database schema and mapping reference with a no-live-write boundary**

### Task 4: Validate the package

**Files:**
- Test: `work/tests/validate_skill.sh`

- [ ] **Step 1: Run the contract test and confirm it passes**
- [ ] **Step 2: Run the platform skill validator if available**
- [ ] **Step 3: Check that no file claims a completed Notion setup or a live database ID**
- [ ] **Step 4: Package the folder as a ZIP for installation/copying**
