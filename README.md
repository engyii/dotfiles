# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Features

- Cross-platform Unix compatibility
- Zsh configuration with [zap](https://github.com/zap-zsh/zap) plugin manager
- [Starship](https://starship.rs/) prompt
- Git configuration
- Terminal utilities (fzf, exa/lsd, bat, ripgrep, etc.)
- SSH key management
- [Catppuccin](https://github.com/catppuccin/catppuccin) theme with easy switching

## Installation

### Quick Install

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply engyii
```

### Manual Installation

1. Install chezmoi:
   ```bash
   sh -c "$(curl -fsLS get.chezmoi.io)"
   ```

2. Initialize with this repo:
   ```bash
   chezmoi init engyii
   ```

3. Check what changes would be made:
   ```bash
   chezmoi diff
   ```

4. Apply the changes:
   ```bash
   chezmoi apply -v
   ```

## Updating

To update your dotfiles from this repo:

```bash
chezmoi update -v
```

## Prerequisites

- zsh
- git

## Optional Dependencies

- exa/lsd (modern ls replacement)
- bat (cat replacement)
- fzf (fuzzy finder)
- ripgrep (better grep)
- fd (better find)
- delta (better git diff)
- tmux (terminal multiplexer)
- neovim (text editor)
- Node.js

## Theme Switching

Edit the `.chezmoi.toml` file and change the `theme` value to one of:
- catppuccin-latte (light)
- catppuccin-frappe (medium-dark)
- catppuccin-macchiato (dark)
- catppuccin-mocha (darker)

Then run `chezmoi apply` to update your configuration.