# dotfiles

This is my personal Linux setup, stripped down and optimized for speed. It is a minimal, keyboard-driven environment built to keep me in the terminal and out of menus.

## My Tech Stack & Tools

- **Window Manager:** Sway (Wayland) with Waybar
- **Terminal Emulator:** Alacritty
- **Shell & Multiplexer:** Bash + Tmux
- **Text Editor:** Neovim / Vim

## Repository Structure

All my raw config files live inside `.config/` and handle the following:

- `sway/` & `waybar/` - Tiling window management and status bar
- `alacritty/` - Terminal styling and performance tweaks
- `tmux/` - Persistent sessions and pane management
- `.bashrc` & `.bash_profile` - Shell aliases, exports, and custom functions

## Quick Installation

> **Warning:** Running this will overwrite your existing configuration files.

Right now, I manage everything manually with symlinks. A migration to a proper manager like Chezmoi or Mise is on the to-do list, but for now, you can link things manually:

```bash
git clone [https://github.com/YOUR_USERNAME/dotfiles.git](https://github.com/YOUR_USERNAME/dotfiles.git) && cd dotfiles
# Example: Symlink Alacritty config
ln -sfn $(pwd)/alacritty ~/.config/alacritty
```
