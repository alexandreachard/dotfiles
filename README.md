# Dotfiles

Personal cross-platform dotfiles managed with Chezmoi and Mise.

The goal of this repository is not to build a highly customized desktop environment. It is to maintain a consistent engineering workflow across multiple environments while keeping the setup simple, portable, and reproducible.

Currently used on:

- Fedora Workstation
- macOS (Apple Silicon)
- Linux Dev Containers

## Core Tooling

- Shell: Zsh
- Prompt: Pure
- Terminal Multiplexer: Tmux
- Editor: Neovim (LazyVim)
- Runtime Manager: Mise
- Terminal Emulator: Alacritty
- Dotfiles Manager: Chezmoi

### Cross-Platform Components

Shared across Linux and macOS:

- Zsh
- Pure Prompt
- Tmux
- Neovim
- Mise

### Linux-Specific Components

Used on Fedora only:

- Sway
- Waybar
- Swaylock

Chezmoi automatically applies the appropriate configuration depending on the operating system.

## Installation

Install and apply the dotfiles:

```bash
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply git@github.com:alexandreachard/dotfiles.git
```

Or, if Chezmoi is already installed:

```bash
chezmoi init --apply git@github.com:alexandreachard/dotfiles.git
```

## Updating

Update the repository and re-apply changes:

```bash
chezmoi update
```

Apply local changes:

```bash
chezmoi apply
```

## Philosophy

This repository is an evolving workstation setup.

The focus is on:

- reproducibility
- portability
- keyboard-driven workflows
- terminal-first tooling
- maintaining the same development experience across multiple machines

New tools and configurations are added when they solve a real problem, not simply for customization.
