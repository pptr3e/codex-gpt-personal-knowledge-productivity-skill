# Notion schema — current personal workspace

## Configured locations

This is the user's existing Notion structure, not a template to recreate. Fetch the targets and verify their parent, names, and property types before every write. If a target is missing or differs, ask before creating or migrating anything.

| Role | Existing Notion page |
|---|---|
| Root: 数据库 | https://app.notion.com/p/3d59ea6f1d4281a9b004fbbd51cebddf |
| Ordinary-page parent: 问题经验 | https://app.notion.com/p/3d59ea6f1d4281e0aa2ec23b8d6fdc14 |
| Ordinary-page parent: 待处理任务 | https://app.notion.com/p/3d59ea6f1d42818fa4bdfc400170f07e |
| Ordinary-page parent: 知识卡片 | https://app.notion.com/p/3d59ea6f1d4281118879c9e7f7c242ba |
| 分类词表 page | https://app.notion.com/p/3d59ea6f1d42817e8db9cdc5a31272d0 |
| 总索引 database | https://app.notion.com/p/8331f6d9466e4f0096bb0e0cd8cfa0e3 |
| 总索引 data source | collection://15b594d5-7f84-4c82-86ed-03777703632c |

## Storage contract

Body pages are ordinary child pages of exactly one type parent above. They hold the complete structured note, necessary evidence, retrieval aliases, and links to related ordinary pages. Their parent determines whether the body is a problem experience, pending task, or knowledge card. Ordinary pages do not have native colored database properties.

The 总索引 database is a directory, not a content store. One body page has exactly one index row. Each row has only the metadata below and points to the unchanged body-page URL; leave its body empty. Clicking an index title opens the directory row, while the 原页面 property opens the full note. Do not move body pages into this database or duplicate their bodies there.

## Total-index properties

| Property | Notion type | Use |
|---|---|---|
| 标题 | Title | Match the ordinary body-page title. |
| 记录类型 | Select | Exactly one of 问题经验, 待处理任务, 知识卡片; match the body parent. |
| 使用领域 | Multi-select | Any applicable values from 科研, 工作, 生活, 工具. These are not page parents. |
| 细分类 | Multi-select | Reuse relevant fine categories; current examples include Windows 与存储, LLIE, diffusion. |
| 原页面 | URL | Exact URL of the ordinary body page. |

Record type: Select. Usage domains: Multi-select. Fine categories: Multi-select. Original page: URL.

The current index has one saved 总索引 view. Search or filter it without adding permanent type-specific views unless the user asks. A body page can have multiple usage domains and fine categories but one parent and one record type.

## Classification and links

The 分类词表 is currently an ordinary page and may be blank. Use the live index options as the current active vocabulary. When a new fine category is needed, propose it in the record plan; after confirmation, add the option and maintain an explanatory entry in 分类词表. Do not create a second classification database.

When an incident contains independently reusable knowledge, create a problem body under 问题经验 and a knowledge body under 知识卡片, then create one index row for each. Link the knowledge page from the problem's 知识依据 section and the problem page from the card's 应用案例 section. These are ordinary page links or mentions, not relation properties on the index.

On an update, locate the existing index row by 原页面 URL and update its title or classifications if needed; never add a duplicate. A read-only retrieval must not repair or alter a stale index without separate authorization.
