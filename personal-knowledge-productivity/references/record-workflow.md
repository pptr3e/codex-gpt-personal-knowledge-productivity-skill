# Record workflow

Read [safety-and-confirmation.md](safety-and-confirmation.md) before inspecting existing records or writing. Apply its ambiguous-target and partial-write rules alongside this workflow.

## Input and boundary

Use the user's stated direction plus relevant current-session context. If the direction is too broad to identify the intended topic, ask what to retain or exclude. Do not write anything until the user explicitly confirms a proposed plan.

## Inspect before proposing the plan

Read [notion-schema.md](notion-schema.md) and verify the configured type pages, classification catalog, and single `总索引` data source. Search index rows by title, tags, and `原页面` URL; inspect likely body pages in their type folders for aliases, related knowledge, and conflicting conclusions. Reuse existing index options when suitable. The `分类词表` page may be empty; do not treat an empty page as a reason to invent a new database.

Use this inspection only to prepare the record, not as an unsolicited retrieval report. If the configured pages or index schema cannot be verified, stop before writing.

Before drafting the proposed body or updating an existing one, read [body-templates.md](body-templates.md). Apply its type-specific minimum content and conditional sections to ordinary body pages only; the `总索引` remains metadata-only.

## Decide record shape

- Give every proposed body page exactly one record type and one matching parent folder. Its index row carries the multi-select usage domains and fine categories.
- Default to one page for one main reusable object.
- Append when type and core reusable object match, and the new material is a clear example, condition, result, or clarification that will not blur the old record.
- Create a new related record when type differs, the boundaries are independently reusable, or an append would make the old record confusing.
- Split only when an experience, a reusable knowledge item, or a lightweight task each has independent reuse value. Show every proposed split before writing.
- If a concrete problem contains knowledge with independent reuse value outside that incident, propose two ordinary pages: a `问题经验` page for the concrete case and a `知识卡片` page for the reusable principle. Link the knowledge page from the problem's `知识依据` section and the problem from the card's `应用案例` section.
- If the knowledge is only the minimum background needed to understand this one problem, keep it inside the problem-experience page and do not create a separate knowledge card.
- If a matching knowledge card already exists, link or append to it instead of creating a duplicate.
- If no existing fine category fits, propose a candidate rather than silently adding an option. Add a new index option and maintain the `分类词表` only after the user confirms that category.

### Page focus after a split

- A `问题经验` page keeps the concrete context, symptoms, environment and versions, attempts, root cause, applied fix, verification, and only a short statement of the relevant principle.
- A `知识卡片` page keeps the reusable explanation, purpose, prerequisites, minimal example, applicability conditions, limitations, confusion points, evidence, and practice status without copying incident-specific detail.
- A `待处理任务` page keeps only the future action and lightweight context defined below.

## Propose, then wait

Present a compact “拟记录方案” containing:

- each body page's title, record type, parent folder, and scope;
- create, append, or link decision and its reason;
- its index row's `记录类型`, `使用领域`, `细分类`, and `原页面` mapping; include retrieval aliases in the body plan;
- any conditional split;
- for every problem/knowledge split, the two-way page links between `知识依据` and `应用案例`;
- structured points to retain, necessary original evidence, and any source or verification labels needed to avoid overstating a claim;
- lightweight task candidates, if any;
- material conflict handling, if any;
- content intentionally excluded.

End by asking whether the user wants to proceed. Only write after the user explicitly confirms.

## Write and verify

After confirmation, preflight access to both destinations. Create or update the full body as an ordinary child of its type page, not in `总索引`. Create the knowledge card before the problem experience when both are new; then add reciprocal page mentions or links in their bodies. Preserve the body page's existing URL on an append.

For each body page, find its index row by `原页面` URL. Create one metadata-only row if none exists; update the existing row if title or classifications changed. Its `标题` matches the body title, `记录类型` is a single select value, `使用领域` and `细分类` are multi-select values, and `原页面` is the body page URL (Original page URL). Leave the index-row body empty. Do not create a second row for the same URL or move the body page into the index. Do not change a saved view merely to run a search.

Re-read changed body pages, their parents, and index rows. Verify one body page has one matching index row, the `原页面` link opens that exact body page, split pages retain distinct focus and reciprocal links, and each body follows its type template without empty sections or invented facts. Report partial success explicitly; never claim recording complete while the body or index is missing. Do not retry partial failures without explaining what succeeded.

## Lightweight task rule

Create a task only when the conversation identifies a future action or the user confirms a proposed task. Place its body under `待处理任务`; record the action, available short context, and `待处理` state using [body-templates.md](body-templates.md), then index it with the same five index properties. Preserve a plan date in the body only when the user explicitly provides it; this is recording supplied information, not scheduling. Do not infer dates or add reminders, execution steps, completion criteria, time estimates, priority, dependencies, or automatic scheduling in this release.
