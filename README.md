# My Neovim Configuration

This is my personal Neovim configuration, designed for speed, modern plugins, and ease of setup. It uses [LazyVim](https://github.com/LazyVim/LazyVim) for plugin management and comes with a curated set of plugins for programming in multiple languages.

## Features

- **Plugin Management:** Powered by [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Language Support:** Treesitter parsers for Lua, Go, JavaScript, TypeScript, Dart, C/C++, JSON, YAML, HTML, CSS, Dockerfile
- **Completion:** Blink completion engine integrated with LSP and GitHub Copilot
- **LSP Support:** Configured for Go, TypeScript, Dart, Python, HTML, CSS, JSON, YAML, Docker
- **File Navigation:** Harpoon for quick file marking and navigation
- **Enhanced Editing:** Auto-indentation, syntax highlighting, and rainbow parentheses
- **Git Ready:** Fully managed in a Git repo for easy cloning and setup

## Requirements

- Neovim 0.9+
- Git
- Node.js (for some language servers)
- Optional: GitHub Copilot access for AI suggestions

## Installation

1. **Backup your current config** (if any):

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. **Clone this repository**:

```bash
git clone git@github.com:MahfujulSagor/nvim.git ~/.config/nvim
```

3. **Open Neovim** and install plugins:

```vim
:Lazy sync
```

4. **Install Treesitter parsers**:

```vim
:TSUpdate
```

5. **Done!** Start coding with your fully configured Neovim.

## Notes

- Copilot integration is optional. If you have Copilot, make sure your token is configured.
- Blink handles completion sources including LSP, buffer, path, and snippets.
- Harpoon requires [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for some features.

## Contributing / Customization

- Feel free to fork and modify the config for your own workflow.
- Add your favorite plugins in `lua/plugins/`.

---

Made with ❤️ by Mahfujul Sagor

