# bujo - 终端中的子弹笔记

_一款极简高效的工具，让你直接在命令行中管理日常事务。_

![License](https://img.shields.io/badge/license-GPL--3.0-blue.svg)
![Shell](https://img.shields.io/badge/Shell-Bash-blue)
![Status](https://img.shields.io/badge/status-开发中-yellow)
![Made with](https://img.shields.io/badge/制作-%F0%9F%92%BB%20%2B%20%F0%9F%A4%96-critical)

[![最新提交](https://img.shields.io/github/last-commit/marcelositr/bulletjornal)](https://github.com/marcelositr/bulletjornal/commits/main)
[![发布版本](https://img.shields.io/github/v/release/marcelositr/bulletjornal?label=release)](https://github.com/marcelositr/bulletjornal/releases)
[![Issues](https://img.shields.io/github/issues/marcelositr/bulletjornal)](https://github.com/marcelositr/bulletjornal/issues)
[![Stars](https://img.shields.io/github/stars/marcelositr/bulletjornal?style=social)](https://github.com/marcelositr/bulletjornal/stargazers)
[![Wiki](https://img.shields.io/badge/文档-Wiki-blueviolet)](https://github.com/marcelositr/bulletjornal/wiki)


`bujo` 是一个基于终端的子弹笔记系统，以 Bash 脚本实现。它使用 `nano` 编辑器配合自定义的颜色语法高亮，将简单的文本文件变成强大的生产力面板。专为热爱终端的简洁与速度、希望拥有一款不打断工作流程的组织工具的用户而打造。

![Gemini Shell Banner](https://github.com/marcelositr/bulletjornal/blob/main/images/bujo.png?raw=true)

### 演示

*（**提示：** 使用 `asciinema` 或 `termtoscreen` 等工具录制一个小 GIF，替换下面的图片。展示创建任务、用 'X' 完成任务以及使用 `bujo -s` 命令查看摘要的过程。）*

![bujo 演示](https://raw.githubusercontent.com/marcelositr/bulletjornal/main/img/bujo.gif)

---

### ✨ 主要功能

*   **极简专注：** 没有干扰，没有繁重的图形界面。只有你、你的终端和你的任务。
*   **彩色可视化语法：** 借助 `nano` 中直观的颜色系统，快速识别重要任务（`!`）、已完成任务（`X`）、会议（`M`）等。
*   **智能任务迁移：** 使用 `bujo -n` 命令，未完成的任务会自动迁移到当天，确保不会遗漏任何事项。
*   **基于纯文本文件：** 你的数据永远属于你。所有记录都保存在简单的文本文件中，易于阅读、备份和使用 Git 进行版本管理。
*   **可自定义：** 在 `daily.bujo` 文件中定义你的日常例行任务，养成习惯并自动化每日计划。
*   **轻量快速：** 使用 Bash 编写，`bujo` 运行极快，几乎不消耗系统资源。

---

### 🚀 安装

安装过程简单且自动化。打开终端，执行以下命令：

```bash
# 1. 克隆仓库
git clone https://github.com/marcelositr/bulletjornal.git

# 2. 进入目录
cd bulletjornal

# 3. 执行安装脚本（需要输入密码）
./install.sh
```

➡️ 如需详细的安装说明、前置条件和故障排除，请参阅 **[Wiki 安装页面](https://github.com/marcelositr/bulletjornal/wiki/Instalação)**。

---

### 📖 基本用法

安装完成后，你可以立即开始使用 `bujo`。

```bash
# 打开主日记本，添加和编辑任务
bujo

# 运行交互式教程，学习语法
bujo -x

# 开始新的一天，迁移未完成的任务
bujo -n
```

➡️ 如需完整的使用指南，请访问我们 Wiki 上的 **[快速入门指南](https://github.com/marcelositr/bulletjornal/wiki/Guia-de-Início-Rápido)** 和 **[命令参考](https://github.com/marcelositr/bulletjornal/wiki/Referência-de-Comandos-(Opções))**。

---

### 📚 完整文档（Wiki）

项目的全部文档都在我们的 Wiki 中。它是你掌握 `bujo` 的主要参考来源。

*   **[快速入门指南](https://github.com/marcelositr/bulletjornal/wiki/Guia-de-Início-Rápido)**
*   **[语法参考](https://github.com/marcelositr/bulletjornal/wiki/Referência-de-Sintaxe)**
*   **[命令参考](https://github.com/marcelositr/bulletjornal/wiki/Referência-de-Comandos-(Opções))**
*   **[示例与使用场景](https://github.com/marcelositr/bulletjornal/wiki/Exemplos-e-Casos-de-Uso)**
*   **[自定义配置](https://github.com/marcelositr/bulletjornal/wiki/Customização)**
*   **[常见问题解答](https://github.com/marcelositr/bulletjornal/wiki/FAQ---Perguntas-Frequentes)**

---

### 🤝 如何贡献

非常欢迎提出建议、报告 Bug 和提交 *Pull Request*！请随时 **创建 Issue** 来讨论新想法或报告问题。

### 📜 许可证

本项目采用 **GNU 通用公共许可证 v3.0** 授权。详见 [LICENSE](LICENSE.txt) 文件。

---
Created by [@marcelositr](https://github.com/marcelositr)
