# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Features

- Cross-platform Unix compatibility (including Alpine Linux containers)
- Zsh configuration with [zap](https://github.com/zap-zsh/zap) plugin manager
- [Starship](https://starship.rs/) prompt with catppuccin-powerline preset
- Git configuration
- Terminal utilities (fzf, exa/lsd, bat, ripgrep, etc.)
- SSH key management
- [Catppuccin](https://github.com/catppuccin/catppuccin) theme with easy switching
- Container-aware setup (works in Docker, WSL, devcontainers)

## Installation

### Quick Install

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply engyii
```

### Manual Installation

1. Install chezmoi:
   ```bash
   sh -c "$(curl -fsLS get.chezmoi.io)"
