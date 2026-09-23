# Ordinary body-page templates

These templates apply to the full-content ordinary pages under `问题经验`, `知识卡片`, and `待处理任务`. They do not add properties to `总索引`: each index row remains metadata-only and links to exactly one body page.

## Shared composition

- Start with the most reusable conclusion or future action. Keep only sections supported by the material; omit empty headings, placeholder text, invented examples, and unstated dates.
- Preserve the minimum context needed to judge applicability and find the page again. Include exact error text, commands, versions, parameters, results, or source links only when they substantiate a conclusion.
- Mark a claim's origin and verification status where readers might otherwise mistake it for a proven fact. Use concise inline labels such as `【用户观察｜未独立复核】`, `【用户理解｜未验证】`, `【AI推断｜未验证】`, `【外部来源｜未验证】`, and `【用户实践｜已验证】`. Use `已验证` only when the supplied material identifies what was done and what outcome was observed; otherwise say that the user reports success but verification details were not recorded. An external suggestion or AI inference is not an observed root cause merely because it sounds plausible.
- If a source or result is not supplied, do not fabricate it. Keep uncertainty visible in the relevant sentence, not in a mandatory empty section. Do not copy a full conversation transcript.
- Put links to related ordinary pages in the body when they support reuse; do not copy the linked page's full explanation. Keep retrieval aliases in the body when they add search value.

## `问题经验` body

Required content, in this order:

1. `## 当前结论` — what is resolved, unresolved, or only hypothesized; lead with the observed outcome and its verification scope when known. If the user reports success but the action or observed result is missing, say `用户报告已解决（验证细节未记录）` rather than claiming an independently verified fix.
2. `## 场景与症状` — the concrete task, relevant environment or versions if known, and the user's reported symptom.

Add only when supported: `## 处理与验证` for actual attempts, applied fix, observed result, and known failed methods; `## 适用条件` for reuse boundaries; `## 知识依据` for links to reusable knowledge cards; `## 历史变化` for later conflicting results; `## 检索别名` for useful alternate search terms. A suspected cause stays explicitly unverified until evidence supports it. Do not turn a generic Hook principle into an incident-specific finding or duplicate its full explanation here.

## `知识卡片` body

Required content, in this order:

1. `## 核心认识` — what the idea is, why it matters for the user's task, and the minimum explanation needed to use it correctly.
2. `## 实践状态` — use `未实践` only when the user explicitly says it has not been practiced; use `已实践` only with the stated action and observed result; use `未知` when practice was not discussed. Reading or AI explanation alone does not establish practice.

Add only when supported: `## 适用条件与限制`, `## 最小示例`, `## 易混淆点`, `## 来源与证据`, `## 应用案例` with links to concrete problem pages, and `## 检索别名`. Preserve a user's unverified understanding as understanding, not as the card's accepted conclusion. Keep incident-specific symptoms, attempts, and results in the linked problem page.

## `待处理任务` body

Required content, in this order:

1. `## 待处理事项` — the future action in terms the user actually supplied. An action verb and object such as “梳理模板” is enough to capture a lightweight task; ask before recording only when even that action cannot be stated without inventing it.
2. `## 状态` — `待处理` when first captured.

Add only when supplied or useful: `## 背景` for brief source context, `## 计划日期` for a date the user explicitly gave, `## 关联记录` for relevant ordinary-page links, and `## 检索别名`. Copy an explicit plan date faithfully and distinguish it from a deadline if the user did; do not infer a date, add a reminder, or schedule the task. Do not invent execution steps, completion criteria, time estimates, priority, or dependencies for this release. A missing optional date is not an empty field.
