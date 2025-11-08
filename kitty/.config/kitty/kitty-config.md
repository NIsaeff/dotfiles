# Kitty Configuration

## Overview
Feature-rich, GPU-accelerated terminal with advanced window management and Catppuccin Mocha theming.

## Key Customizations

### Font & Display
- **Font Family**: FiraCode Nerd Font
- **Size**: 12pt (slightly smaller than Alacritty for more content)
- **Features**: Programming ligatures, icon support

### Visual Theme
- **Color Scheme**: Catppuccin Mocha (dark theme)
- **Background**: #1E1E2E (dark purple-gray)
- **Foreground**: #CDD6F4 (light blue-gray)
- **Transparency**: 95% opacity with blur effects
- **Padding**: 6px window padding for clean appearance

### Window Management
- **Decorations**: Hidden for seamless tiling integration
- **Layouts**: Split layouts enabled
- **Splits**: Horizontal (Ctrl+D) and vertical (Ctrl+Shift+T) splitting
- **Navigation**: Vim-style hjkl navigation between panes

### Advanced Features
- **Remote Control**: Enabled for automation/scripting
- **Audio Bell**: Disabled for quiet operation
- **Performance**: Optimized repaint delay (10ms) and input delay (3ms)
- **VSync**: Enabled for smooth rendering

### Key Bindings
- **Tab Management**: Ctrl+Shift+T (new), Ctrl+Shift+W (close)
- **Window Splits**: Ctrl+D (horizontal), Ctrl+Shift+T (vertical)
- **Navigation**: Ctrl+hjkl for pane navigation
- **Resizing**: Ctrl+Alt+hjkl for window resizing
- **Tab Navigation**: Ctrl+Shift+Left/Right

## Workflow Integration
- **Secondary Terminal**: Alternative to Alacritty with more features
- **Development**: Advanced splitting for multi-pane workflows
- **Scripting**: Remote control API for automation
- **Theming**: Consistent with overall Catppuccin aesthetic

## Files
- `kitty.conf`: Main configuration file

## Dependencies
- `kitty`: Terminal emulator
- `ttf-firacode-nerd`: Font with programming ligatures