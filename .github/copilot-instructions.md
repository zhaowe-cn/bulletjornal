# Copilot Instructions

## 项目概述

`bujo` 是一个基于终端的子弹笔记（Bullet Journal）系统，使用 Bash 脚本实现。它通过 `nano` 编辑器配合自定义的颜色语法高亮文件（`bujo.nanorc`），将纯文本文件转化为生产力工具。

## 技术栈

- **语言：** Bash (Shell Script)
- **编辑器：** nano（配合自定义语法高亮）
- **运行环境：** Linux/macOS 终端
- **许可证：** GPL-3.0

## 项目结构

- `bujo` — 主脚本文件，包含所有核心功能（任务管理、迁移、摘要等）
- `bujo.nanorc` — nano 编辑器的自定义语法高亮配置
- `daily.bujo` — 每日例行任务模板
- `todo.bujo` — 初始的待办事项文件
- `install.sh` — 安装脚本，将 bujo 部署到系统路径
- `images/` — 项目图片资源

## 编码规范

- 使用 Bash 编写所有脚本，保持兼容 `#!/bin/bash`
- 函数命名使用小写字母加下划线（snake_case），例如 `start_new_day`、`migrate_tasks`
- 变量命名使用大写字母加下划线（UPPER_SNAKE_CASE），例如 `TODO_FILE`、`DAILY_FILE`
- 注释同时提供英语和葡萄牙语版本（保持原有风格）
- 用户界面文本为葡萄牙语（终端输出信息）

## 核心概念

### 任务标记符号

- `!` — 重要任务（高优先级）
- `*` — 普通任务
- `*l` — 低优先级任务
- `?` — 想法/探索性任务
- `X` — 已完成（放在行首标记完成）
- `C` — 已取消
- `CX` — 已取消且隐藏
- `>>` — 已迁移
- `M` — 会议
- `@` — 邮件相关
- `>>>DD/MM/YYYY>>>` — 计划任务（指定日期）

### 关键文件路径

- 用户配置目录：`$HOME/.bujo/`
- 主待办文件：`$HOME/.bujo/todo.bujo`
- 每日任务文件：`$HOME/.bujo/daily.bujo`
- 脚本安装路径：`/usr/local/bin/bujo`
- 语法高亮文件：`/usr/share/nano/bujo.nanorc`

## 贡献指南

- 提交信息使用简洁清晰的描述
- 新功能应遵循现有的函数结构和命名规范
- 确保脚本在主流 Linux 发行版上可正常运行
- 日期格式统一使用 `DD/MM/YYYY`
