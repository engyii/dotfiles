#!/bin/bash
# Catppuccin theme colors for terminals

# Base16 Catppuccin
# Scheme author: Pocco81 (https://github.com/pocco81)
# Template author: Tinted Theming (https://github.com/tinted-theming)

export FZF_DEFAULT_OPTS="
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
"

# Set bat theme
export BAT_THEME="Catppuccin-mocha"

# Terminal colors for supported terminals
if [[ $TERM == "xterm-256color" || $TERM == "screen-256color" ]]; then
  # Base colors
  export BASE16_COLOR_00_HEX="1e1e2e" # Base
  export BASE16_COLOR_01_HEX="181825" # Mantle
  export BASE16_COLOR_02_HEX="313244" # Surface0
  export BASE16_COLOR_03_HEX="45475a" # Surface1
  export BASE16_COLOR_04_HEX="585b70" # Surface2
  export BASE16_COLOR_05_HEX="cdd6f4" # Text
  export BASE16_COLOR_06_HEX="f5e0dc" # Rosewater
  export BASE16_COLOR_07_HEX="b4befe" # Lavender
  export BASE16_COLOR_08_HEX="f38ba8" # Red
  export BASE16_COLOR_09_HEX="fab387" # Peach
  export BASE16_COLOR_0A_HEX="f9e2af" # Yellow
  export BASE16_COLOR_0B_HEX="a6e3a1" # Green
  export BASE16_COLOR_0C_HEX="94e2d5" # Teal
  export BASE16_COLOR_0D_HEX="89b4fa" # Blue
  export BASE16_COLOR_0E_HEX="cba6f7" # Mauve
  export BASE16_COLOR_0F_HEX="f2cdcd" # Flamingo
fi