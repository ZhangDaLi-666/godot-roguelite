# Godot 2D Auto-Shooter Roguelite

一个用于学习、开源和简历展示的 Godot 4.x 肉鸽游戏项目。

目标不是一开始做大作，而是完成一个能完整游玩、能展示学习过程、能说明 AI 协作能力的小作品。

## Project Goals

- 用 Godot 4.x + GDScript 做一个 2D 俯视角自动射击肉鸽。
- 跑通吸血鬼幸存者式战斗循环：走位、自动攻击、刷怪、升级、Boss、结算。
- 加入轻量土豆兄弟式选择：升级三选一、波间商店三选一。
- 保留开发日志、README、提交记录和 PR 记录，用于展示学习过程。
- 用 Codex 辅助拆任务、解释代码、生成小模块、检查 diff、写文档，但保证自己能理解和讲清楚实现。

## Tech Stack

- Engine: Godot 4.x
- Language: GDScript
- Platform: Windows PC
- Version control: Git + GitHub
- Art/audio: placeholder assets first, then free assets or self-made simple pixel art

## MVP

- 玩家：WASD 移动，自动瞄准最近敌人。
- 敌人：普通追踪、快速低血、厚血慢速。
- 武器：直线子弹、环绕物、范围爆炸。
- 成长：击杀掉经验，升级时三选一。
- 商店：每波结束出现 3 个装备或属性选项。
- 局长：第一版做约 5 分钟一局，最后刷一个小 Boss。
- 胜负：死亡失败，击败 Boss 胜利，结算显示等级、击杀数、存活时间。

## Learning Roadmap

| Week | Focus | Deliverable |
| --- | --- | --- |
| 1 | Godot 基础 | 完成官方 2D 入门，理解场景、节点、脚本、信号 |
| 2 | 最小战斗原型 | 玩家移动、敌人生成、碰撞受伤、死亡重开 |
| 3 | 武器与经验 | 自动攻击、子弹、击杀、经验球、升级 UI |
| 4 | 升级和轻商店 | 8 个基础升级，波间三选一 |
| 5 | 波次与 Boss | 每波 60 秒，最后 Boss |
| 6 | 打磨可玩性 | 数值、音效、屏幕震动、命中特效、暂停、结算 |
| 7-8 | 作品集包装 | README、演示视频、开发日志、AI 协作说明 |

## Suggested Structure

```text
assets/        美术、音频、字体、特效素材
docs/          开发日志、设计记录、截图和作品集说明
resources/     Godot 数据资源，例如升级、武器、敌人、波次
scenes/        Godot 场景
scripts/       GDScript 脚本
ui/            UI 场景、主题、图标和脚本
builds/        本地导出文件，不提交到 Git
```

## Getting Started

当前仓库处于项目初始化阶段，Godot 工程文件会在下一个里程碑创建。

准备环境：

1. 安装 Godot 4.x。
2. 安装 Git。
3. 可选安装 VS Code 和 GitHub CLI。
4. 用 Godot 打开项目目录，创建或载入 `project.godot`。

常用 Git 命令：

```powershell
git status
git add .
git commit -m "docs: initialize project"
git remote add origin <your-github-repo-url>
git push -u origin main
```

如果安装了 GitHub CLI：

```powershell
gh auth login
gh repo create godot-roguelite --public --source . --remote origin --push
```

## Codex And GitHub Workflow

- `AGENTS.md` 是 Codex 的项目长期说明文件，后续对话会用它理解项目目标和协作方式。
- 本地 Codex 适合做任务拆分、代码解释、小功能实现、README 更新、diff 检查和提交说明草稿。
- GitHub PR 适合记录每个阶段的学习成果。
- 配置 Codex code review 后，可以在 PR 评论里使用 `@codex review` 请求审查。
- 进阶时可以添加 `openai/codex-action@v1`，让 GitHub Actions 自动运行 Codex 检查。

## Manual Acceptance Checklist

- 玩家能移动且不会穿出地图。
- 敌人能追踪并造成伤害。
- 武器能自动攻击最近敌人。
- 击杀能掉经验并触发升级三选一。
- 波次结束能进入商店选择。
- 死亡能进入失败结算，胜利能进入胜利结算。
- 同屏 100 个敌人时仍基本流畅。

## License

This project is licensed under the MIT License. See `LICENSE` for details.

