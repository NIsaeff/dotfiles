# Alacritty Configuration

## Overview
Minimal, GPU-accelerated terminal emulator configuration optimized for Wayland and development workflows.

## Key Customizations

### Font Configuration
- **Font Family**: FiraCode Nerd Font (all variants)
- **Size**: 14pt for optimal readability
- **Features**: Programming ligatures, icon support via Nerd Font

### Window Settings
- **Decorations**: Disabled (borderless for clean look)
- **Transparency**: Handled by Niri compositor (commented out)
- **Integration**: Seamless with tiling window manager

### Shell Integration
- **Default Shell**: Zsh with login shell flags
- **Auto-Tmux**: Automatically attaches to existing tmux session or creates new one
- **Command**: `tmux attach || tmux new` for persistent sessions

### Performance
- **GPU Acceleration**: Enabled by default
- **Wayland Native**: Optimized for Wayland display server
- **Low Latency**: Minimal input delay configuration

## Workflow Integration
- **Primary Terminal**: Main terminal for development work
- **Tmux Integration**: Seamless session management
- **Niri Compatibility**: Works perfectly with tiling compositor
- **Transparency**: Managed by Niri (92% opacity)

## Files
- `alacritty.toml`: Main configuration file

## Dependencies
- `alacritty`: Terminal emulator
- `ttf-firacode-nerd`: Font with programming ligatures
- `tmux`: Terminal multiplexer (auto-launched)
- `zsh`: Default shell