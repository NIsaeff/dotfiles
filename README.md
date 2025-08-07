Arch Linux GNOME + Niri Dotfiles

This repository contains my personal dotfiles for a clean and efficient Arch Linux setup using:

    GNOME for a stable, fully featured Wayland desktop

    Niri as an optional tiling Wayland compositor

    Kitty and Alacritty as GPU-accelerated terminals

    Zsh + Starship for a modern terminal experience

These dotfiles are managed with GNU Stow for modular and reproducible configuration.
Repository Structure

dotfiles/
├── alacritty/        # Alacritty terminal config
├── kitty/            # Kitty terminal config
├── starship/         # Starship shell prompt
├── tmux/             # Tmux terminal multiplexer config
├── zsh/              # Zsh configuration and plugins
├── install.sh        # Helper script to stow configs
└── README.md

Prerequisites

Install the following packages before using these dotfiles:
Core Packages

# Shell and utilities
sudo pacman -S zsh stow git

# Terminals and multiplexer
sudo pacman -S kitty alacritty tmux

# Prompt and enhancements
sudo pacman -S starship zoxide fzf

# Fonts
sudo pacman -S ttf-fira-code ttf-font-awesome noto-fonts noto-fonts-emoji

Optional: Niri (Wayland Tiling Compositor)

sudo pacman -S niri

Installation

    Clone the Repository

git clone https://github.com/NIsaeff/dotfiles.git ~/dotfiles
cd ~/dotfiles

    Backup Existing Configs (Optional)

mkdir -p ~/.config/backup
cp -r ~/.config/kitty ~/.config/backup/ 2>/dev/null || true
cp -r ~/.config/alacritty ~/.config/backup/ 2>/dev/null || true
cp ~/.config/starship.toml ~/.config/backup/ 2>/dev/null || true
cp ~/.zshrc ~/.config/backup/ 2>/dev/null || true

    Install Configurations with Stow

# Install all configs at once
./install.sh

# Or selectively stow individual packages:
stow alacritty    # Stows to ~/.config/alacritty/
stow kitty        # Stows to ~/.config/kitty/
stow starship     # Stows to ~/.config/starship.toml
stow tmux         # Stows to ~/.config/tmux/ or ~/
stow zsh          # Stows to ~/.zshrc and related files

    Activate Zsh

chsh -s $(which zsh)

Usage Notes

    Kitty & Alacritty: GPU-accelerated, Wayland-friendly terminals

    Starship: Provides a fast, informative shell prompt

    Zsh: Configured for completion, history, and modern workflow

    Niri: Optional tiling compositor for Wayland; GNOME is the default DE

Updating

To update and restow:

cd ~/dotfiles
git pull origin main
stow -R */      # Restow all packages

Features

    Modular configuration managed with GNU Stow

    Clean and minimal terminal environments with Kitty and Alacritty

    Modern Zsh + Starship shell setup with zoxide support

    Compatible with GNOME for stability and Niri for tiling workflows
