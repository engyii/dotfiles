#!/bin/bash

# Bootstrap script for setting up a new machine with chezmoi and dotfiles

set -e # Exit immediately if a command exits with a non-zero status

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Setting up your dotfiles with chezmoi...${NC}"

# Check if chezmoi is installed
if ! command -v chezmoi &> /dev/null; then
    echo -e "${YELLOW}Installing chezmoi...${NC}"
    sh -c "$(curl -fsLS get.chezmoi.io)"
    # Add chezmoi to PATH for the current session
    export PATH="$HOME/.local/bin:$PATH"
fi

# Initialize and apply dotfiles
echo -e "${GREEN}Initializing dotfiles from github.com/engyii/dotfiles...${NC}"
chezmoi init --apply engyii

echo -e "${GREEN}Dotfiles setup complete!${NC}"
echo -e "${YELLOW}You may need to restart your terminal or run 'exec zsh' to see all changes.${NC}"