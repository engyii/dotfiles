# Dotfiles

Cross-platform dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Features

- 🚀 Modern terminal setup with [Starship](https://starship.rs/)
- 🔌 Zsh with [Zap](https://www.zapzsh.org/) for plugin management
- 🎨 [Catppuccin](https://github.com/catppuccin/catppuccin) color scheme
- 🛠️ Optimized for JavaScript/Node.js development
- 🔄 Cross-platform compatibility (Linux, WSL)
- 🔒 Secure credential management

## Included Tools

- `zsh` - Modern shell
- `starship` - Cross-shell prompt
- `fzf` - Fuzzy finder
- `exa`/`lsd` - Modern replacement for `ls`
- `bat` - Modern replacement for `cat`
- `ripgrep` - Modern replacement for `grep`
- `fd` - Modern replacement for `find`
- `tmux` - Terminal multiplexer
- Plus many helpful zsh plugins and aliases

## Installation

### Quick Install

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply engyii
