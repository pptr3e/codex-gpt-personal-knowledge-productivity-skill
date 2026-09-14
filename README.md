# Personal Knowledge & Productivity Skill for Codex and ChatGPT

**简体中文 | [English](README.en.md)**

一个供个人使用的 Codex Skill，用于将选定的会话知识与经验记录到已配置的 Notion 知识库，或检索已有记录。

## 使用

将本仓库文件放入 Codex 的 `personal-knowledge-experience-assistant` Skill 目录，并配置可访问目标知识库的 Notion 连接。在 Codex 中使用 `$personal-knowledge-experience-assistant` 显式调用。

记录前，Skill 会展示拟记录内容并请求确认。仅安装或加载 Skill 不会访问或修改 Notion。

## 文件

- `SKILL.md`：触发条件和工作规则
- `agents/openai.yaml`：显示信息及工具依赖
- `references/`：记录、检索、页面结构与确认规则

本仓库不包含 Notion 登录凭据。Skill 中配置的页面位置仅适用于对应的个人知识库。
