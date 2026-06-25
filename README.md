# dotfiles

My personal, minimal Linux development environment optimized for speed, keyboard-driven navigation, and terminal efficiency.

## My Tech Stack & Tools

- **Window Manager:** Sway (Wayland) with Waybar
- **Terminal Emulator:** Alacritty
- **Shell & Multiplexer:** Bash + Tmux
- **Text Editor:** Neovim / Vim (for fast configuration and editing)

## Repository Structure

This repository contains my raw configuration files (`.config/`) for:

- `sway/` & `waybar/` - Tiling window management and status bar layouts
- `alacritty/` - Terminal styling and performance tweaks
- `tmux/` - Persistent sessions and pane management
- `.bashrc` & `.bash_profile` - Shell aliases, exports, and custom functions

## Quick Installation

> **Warning:** Running this will overwrite your existing configuration files.

To deploy this environment on a fresh Linux installation, clone the repository and create the required symlinks:

```bash
git clone [https://github.com/YOUR_USERNAME/dotfiles.git](https://github.com/YOUR_USERNAME/dotfiles.git) && cd dotfiles
# Example: Symlink Alacritty config
ln -sfn $(pwd)/alacritty ~/.config/alacritty
```

I am currently managing these configuration files via manual symlinks;
migration to an automated dotfile manager (like Chezmoi or Mise) is planned for the next iteration.
