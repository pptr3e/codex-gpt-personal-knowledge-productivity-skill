# Personal Knowledge & Productivity Skill for Codex and ChatGPT

**简体中文 | [English](README.en.md)**

一个供个人使用的 Codex Skill，用于将选定的会话知识与经验记录到已配置的 Notion 知识库，或检索已有记录。

## 使用

将本仓库 `personal-knowledge-productivity/` 内的文件复制到 Codex 的 `personal-knowledge-experience-assistant` Skill 目录，并配置可访问目标知识库的 Notion 连接。在 Codex 中使用 `$personal-knowledge-experience-assistant` 显式调用。

记录前，Skill 会展示拟记录内容并请求确认。仅安装或加载 Skill 不会访问或修改 Notion。

每篇记录按「正文 → 总索引 → 回读核验」完成后再处理下一篇。完成回复提供正文和索引两条链接；索引缺失或无法核验时明确报告未完成，并避免重复创建正文。

## Git 同步

本项目连接 `https://github.com/pptr3e/codex-gpt-personal-knowledge-productivity-skill.git`，使用 `main` 跟踪 `origin/main`。开始修改前，在工作区干净时运行 `git pull --ff-only`；修改完成后检查 `git diff`，选择要提交的文件执行 `git add <文件路径>`、`git commit -m "修改说明"`，再运行 `git push`。同步需要显式提交和推送，不会自动上传每次保存。

`personal-knowledge-productivity/` 是与远端保持一致的主要 Skill 源码目录；`personal-knowledge-experience-assistant-v0.1/` 保留本地安装包、设计资料和校验脚本。修改 Skill 后同时更新安装包和实际安装目录。`.snapshots/` 与本机缓存不纳入版本管理。

## 文件

- `SKILL.md`：触发条件和工作规则
- `agents/openai.yaml`：显示信息及工具依赖
- `references/`：记录、检索、页面结构与确认规则

本仓库不包含 Notion 登录凭据。Skill 中配置的页面位置仅适用于对应的个人知识库。
