# .config

Personal dotfiles repository containing a comprehensive development environment configuration.

## Overview

This repository manages configuration files for a modern terminal-based development setup, focusing on seamless integration between Neovim, Tmux, and supporting tools.

## Components

### Neovim Configuration (`nvim/`)
- **Modern Lua-based setup** using lazy.nvim plugin manager
- **Core modules**: Options, keymaps, icons, folding configuration
- **Plugin ecosystem**: LSP, DAP, telescope, treesitter, nvim-cmp, barbar, neo-tree
- **Language support**: Go testing, general LSP configuration
- **Features**: True color support, session persistence, integrated navigation

### Tmux Configuration (`tmux/`)
- **Plugin manager**: TPM (Tmux Plugin Manager)
- **Plugins**: vim-tmux-navigator, tmux-resurrect, tmux-continuum, tmux-cpu-mem-monitor
- **Features**: 
  - True color and 256-color support
  - Vi-style key bindings and copy mode
  - Session persistence across reboots
  - Real-time system monitoring in status bar
  - Seamless navigation with Neovim

### Additional Tools
- **colorls**: Custom color scheme configuration
- **opencode**: AI coding assistant with local Ollama integration (qwen3-coder:30b)
- **fzf**: Fuzzy finder configuration
- **Git**: Custom prompt colors and ignore patterns

## Key Features

- **Integrated Navigation**: Seamless movement between Neovim panes and Tmux windows
- **Session Persistence**: Automatic saving and restoration of development sessions
- **Local AI**: Configured for local Ollama model for privacy and offline use
- **Consistent Theming**: Nord-inspired color scheme across all tools
- **Modern Tooling**: Latest plugin managers and configuration approaches
- **System Monitoring**: Real-time CPU and memory display in Tmux status bar

## Installation

Clone this repository to your home directory:

```bash
git clone <repository-url> ~/.config
```

### Neovim Prerequisites

For Neovim to work well with your system and terminal, install the following requirements:

#### System Packages

Using homebrew or equivalent package manager:

```bash
brew install neovim
brew install fd
brew install ripgrep
brew install --cask font-devicons
brew install --cask font-meslo-lg-nerd-font
brew install fontconfig
brew install tree-sitter
brew install tree-sitter-cli
```

#### Terminal Configuration

In your terminal emulator, use patched fonts and enable mouse reporting.
For iTerm2, configure font and mouse settings as shown in the documentation images.

#### Code Formatting Tools (Conform)

```bash
brew install prettier
brew install shfmt
brew install stylua
brew install goimports
brew install gofumpt
brew install yamllint
brew install markdownlint-cli2
brew install taplo
```

#### Go Testing

```bash
brew install gotestsum
```

After installing prerequisites, lazy.nvim will auto-install on first run and plugins will be automatically installed when Neovim starts.

### Tmux
- Install TPM (Tmux Plugin Manager):
  ```bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```
- Install plugins with `prefix + I`
- Reload configuration with `prefix + r`

### Dependencies
- Neovim 0.8+
- Tmux 3.0+
- Ollama (for AI assistant)
- fzf
- Git

## Configuration Philosophy

- **Terminal-first**: Optimized for terminal-based development workflows
- **Keyboard-driven**: Extensive use of vi-style key bindings
- **Minimal but powerful**: Clean configurations with essential functionality
- **Privacy-focused**: Local AI integration for code assistance
- **Productivity-oriented**: Features designed to minimize context switching
