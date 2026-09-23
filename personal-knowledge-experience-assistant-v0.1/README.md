# Personal Knowledge & Experience Assistant

这是首期可安装 Skill 源码包。将 `personal-knowledge-experience-assistant` 文件夹复制到 Codex Skills 目录后，可通过 `$personal-knowledge-experience-assistant` 显式调用。

Skill 已绑定当前个人 Notion 知识库的位置，但不包含凭据，也不会仅因加载而访问或修改 Notion。写入前仍须展示拟记录方案并取得确认。正文放在「问题经验／待处理任务／知识卡片」普通子页面中；「总索引」是仅存彩色分类属性和原页面链接的独立目录，不保存正文。若 Notion 位置或结构变化，先核对并征求用户意见，不自动重建数据库。

## 内容

- `personal-knowledge-experience-assistant/`：Skill 本体；`references/body-templates.md` 定义三类普通正文页的弹性模板。
- `docs/`：首期历史设计与实施计划；现行写入结构以 Skill 的 `references/notion-schema.md` 为准。
- `tests/validate_skill.sh` 与 `tests/validate_skill.ps1`：Linux/macOS 和 Windows 下的本地结构与关键行为约束检查。
