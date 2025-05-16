# Dotfiles

Modern and consistent development environment configuration using [chezmoi](https://www.chezmoi.io/), [starship](https://starship.rs/), and [zsh](https://www.zsh.org/) with [zap](https://www.zapzsh.org/).

![Catppuccin](https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png)

## Features

- 🚀 Cross-platform: Works on Linux, WSL, and other Unix-like systems
- 🔧 Modern terminal tools (exa, bat, ripgrep, fzf)
- ✨ Beautiful Catppuccin theme
- 💻 Full developer environment with sane defaults
- 🔍 Optimized for JavaScript/Node.js development
- 🔐 SSH key management
- 🧩 Modular zsh configuration with zap plugin manager

## Quick Install

```bash
# Install chezmoi and apply dotfiles in one command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply engyii
```

For a more customized approach:

```bash
# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"

# Initialize dotfiles repository (readonly)
chezmoi init engyii

# See what changes would be made
chezmoi diff

# Apply changes
chezmoi apply -v

# Run the setup script to install dependencies
chezmoi execute-template < $(chezmoi source-path)/run_setup.sh.tmpl | bash
```

## What's Included

- **Shell**: zsh with zap plugin manager
- **Prompt**: Starship with Catppuccin theme
- **Git**: Sensible defaults and useful aliases
- **Modern CLI**: exa, bat, ripgrep, fzf, delta
- **Editor**: Neovim configuration
- **Node.js**: Development setup with useful aliases

## Customization

You can customize this setup by:

1. Forking this repository
2. Cloning your fork and making changes
3. Committing and pushing your changes
4. Using `chezmoi init --apply username/dotfiles` with your username

## Terminal Tools

- **[exa](https://the.exa.website/)**: Modern replacement for `ls`
- **[bat](https://github.com/sharkdp/bat)**: Enhanced `cat` with syntax highlighting
- **[ripgrep](https://github.com/BurntSushi/ripgrep)**: Super-fast search tool
- **[fzf](https://github.com/junegunn/fzf)**: Fuzzy finder for everything
- **[delta](https://github.com/dandavison/delta)**: Better git diffs

## License

MIT