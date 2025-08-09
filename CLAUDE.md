# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for Arch Linux on WSL2, managed with GNU Stow. The configurations include terminal emulators (Kitty, Alacritty), shell environment (Zsh + Starship), terminal multiplexer (Tmux), and web browser (Qutebrowser). Development is done using VSCode with Claude Code integration.

### Branch Structure
- `main`: Base configurations
- `laptop`: Native Arch Linux laptop setup  
- `wsl`: WSL2-specific adaptations (current branch)
- `niriarch7-25`: Niri compositor setup

## Common Commands

### Installation and Management
```bash
# Install all configurations
./install.sh

# Install specific package
stow <package-name>    # e.g., stow kitty, stow zsh

# Update configurations
git pull origin main
stow -R */             # Restow all packages

# Remove configuration
stow -D <package-name>
```

### Development Workflow
```bash
# VSCode with WSL integration is primary development environment
code .                 # Open project in VSCode from WSL

# Terminal sessions for Claude Code integration
./tmux/opencode-tmux.sh    # Creates tmux session with opencode + nvim layout
```

## Repository Structure

The repository uses GNU Stow's package-based organization:

- **alacritty/**: GPU-accelerated terminal configuration with FiraCode Nerd Font
- **kitty/**: Alternative terminal with Catppuccin Mocha theme and tiling shortcuts
- **starship/**: Modern shell prompt configuration with git integration
- **tmux/**: Terminal multiplexer config and development session script
- **zsh/**: Shell configuration (files symlinked to user home)

## Key Architecture Notes

### WSL2 Environment
- Running Arch Linux on Windows Subsystem for Linux 2
- Primary development through VSCode with WSL integration
- Terminal access via Windows Terminal or integrated VSCode terminal

### Stow Management
Each directory represents a "stow package" that gets symlinked to appropriate locations:
- Terminal configs → `~/.config/`
- Zsh config → `~/.zshrc` and related dotfiles
- Starship config → `~/.config/starship.toml`

### Terminal Integration
- Both Alacritty and Kitty auto-start tmux sessions (though may not apply in WSL)
- Kitty includes vim-style navigation shortcuts (Ctrl+hjkl)
- Claude Code can be used alongside VSCode development
- Terminal multiplexer script available for terminal-based workflows

### Theme Consistency
- Kitty uses Catppuccin Mocha theme
- Starship prompt uses color coordination with git status
- FiraCode Nerd Font standardized across terminals

## Prerequisites

Before working with these dotfiles, ensure these packages are installed:
```bash
sudo pacman -S zsh stow git kitty alacritty tmux starship zoxide fzf
sudo pacman -S ttf-fira-code ttf-font-awesome noto-fonts noto-fonts-emoji
```