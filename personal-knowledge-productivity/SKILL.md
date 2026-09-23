---
name: personal-knowledge-experience-assistant
description: Use when the user explicitly invokes this skill to record selected conversation knowledge, experience, or lightweight tasks in the personal Notion knowledge base after confirmation, or to retrieve prior personal records.
metadata:
  short-description: "确认后把会话经验记录或从 Notion 找回"
---

# Personal Knowledge & Experience Assistant

Use this skill only after explicit invocation. It has two independent modes: record the current conversation or retrieve prior personal records. Do not access Notion in a normal conversation that has not explicitly invoked this skill.

## Choose the mode

Read the user's request after invocation.

- Use **Record workflow** when the user asks to record, organize, archive, or add the current discussion to their knowledge base. Read [record-workflow.md](references/record-workflow.md).
- Use **Retrieval workflow** when the user asks to find, recall, or reuse an earlier experience or note. Read [retrieval-workflow.md](references/retrieval-workflow.md).
- If neither intention is clear, ask one short question: “这次是想记录当前会话，还是查找以前的记录？” Do not search or write before the user answers.

## Shared rules

- Before either workflow reads or acts on Notion content, read [safety-and-confirmation.md](references/safety-and-confirmation.md) and apply its decision boundaries.
- Use only the user's requested topic, direction, and relevant current-session context. Do not treat invocation alone as permission to archive the entire conversation.
- Keep the body and the index separate. Write full content as an ordinary child page under exactly one type page: `问题经验`, `待处理任务`, or `知识卡片`. The `总索引` database contains one metadata-only row per body page with colored classification properties and an `原页面` URL. Never move the body page into `总索引` or put its full text in an index row.
- Choose exactly one record type per body page. A recording request may produce multiple separately focused, mutually linked body pages; each gets its own index row.
- Treat the body and its unique `总索引` row as one recording unit. Immediately index and verify each body before creating the next one. A body link alone is not completion evidence; report both body and index links, or explicitly report the missing or unverified part. Follow the completion gate in [record-workflow.md](references/record-workflow.md).
- `使用领域` is a multi-select index property drawn from `科研`, `工作`, `生活`, and `工具`; `细分类` is another multi-select property. Neither changes the body page's parent.
- When a concrete problem uses independently reusable knowledge, link the two ordinary pages in their bodies rather than inventing a database relation property or duplicating the full explanation.
- Verify the configured Notion pages and index schema before writing. Do not create a replacement database, move existing body pages, or change saved views without separate user confirmation.
- Keep structured conclusions primary. Preserve only original fragments needed to verify a conclusion, such as exact errors, commands, code, versions, parameters, experimental results, source links, and explicit user decisions.
- Preserve history when later material conflicts with an older conclusion. Add the new conditions and evidence; never silently overwrite the older result.
- Return concise results with the affected Notion links. If verification fails after a write, say that verification is incomplete rather than claiming success.

## Notion structure

Use [notion-schema.md](references/notion-schema.md) to find the configured type pages and `总索引`, classify content, and map a confirmed record plan to the actual Notion fields. If that live structure differs from the reference, pause and ask rather than silently rebuilding it.
