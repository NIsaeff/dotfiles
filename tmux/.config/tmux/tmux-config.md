# Tmux Configuration

## Overview
Comprehensive tmux setup optimized for long development sessions with vim-like navigation, smart pane management, and Catppuccin theming.

## Key Customizations

### Vim Integration
- **Prefix Key**: Ctrl+A (more vim-friendly than Ctrl+B)
- **Smart Navigation**: Seamless vim-tmux-opencode pane switching with Ctrl+hjkl
- **Copy Mode**: Vi-style selection and yanking with system clipboard integration
- **Escape Key**: Enter copy mode (vim-like behavior)

### Pane Management
- **Splitting**: `s` (horizontal) and `v` (vertical) with current directory
- **Navigation**: Ctrl+hjkl for seamless pane switching
- **Resizing**: Ctrl+arrow keys for quick adjustments
- **Window Navigation**: Alt+hl for window switching (no conflicts)

### Development Layouts
- **Standard Layouts**: Alt+1-5 for even-horizontal, even-vertical, main-horizontal, main-vertical, tiled
- **Auto-Sync Layouts**: Alt+6-8 with automatic pane synchronization
- **4-Pane Setup**: Alt+9 creates tiled 4-pane layout with sync enabled
- **Reset**: Alt+0 disables sync and returns to normal layout

### Synchronization System
- **Manual Toggle**: `y` to toggle pane synchronization with visual feedback
- **Auto-Sync Layouts**: Specific layouts that enable sync automatically
- **Visual Indicator**: Status bar shows "SYNC" when active
- **Development Focus**: Perfect for multi-server commands and testing

### Master Pane System (Disabled)
- **Note**: Advanced master pane directory synchronization temporarily disabled
- **Future**: Comprehensive system for automatic directory syncing across panes
- **Hooks**: Prepared for automatic sync on directory changes

### Visual Theme
- **Colors**: Catppuccin Mocha theme matching system aesthetic
- **Status Bar**: Bottom position with session, sync status, time, and hostname
- **Borders**: Purple active borders (#89b4fa) with dark inactive (#45475a)
- **Window Status**: Clear current/inactive window distinction

### Performance & Usability
- **Mouse Support**: Enabled for scrolling and pane selection
- **History**: 10,000 lines scrollback buffer
- **True Color**: 256-color + true color support
- **Fast Response**: No escape delay, optimized repeat timeout
- **Smart Indexing**: Windows and panes start at 1, auto-renumber

### Session Management
- **Auto-Integration**: Launched automatically by Alacritty
- **Persistent Sessions**: Survives terminal closures
- **Focus Events**: Vim integration support
- **Clipboard**: System clipboard integration via xclip

## Advanced Features

### Helper Scripts
- **opencode-tmux.sh**: Tmux integration script
- **sync-master-pane.sh**: Master pane synchronization utilities

### Key Bindings Summary
- **Prefix**: Ctrl+A
- **Panes**: `s`/`v` split, Ctrl+hjkl navigate, Ctrl+arrows resize
- **Windows**: Alt+hl navigate, `c` create with name prompt
- **Sync**: `y` toggle, Alt+6-9 auto-sync layouts
- **System**: `r` reload config, `x`/`X` kill pane/window

## Files
- `tmux.conf`: Main configuration file
- `opencode-tmux.sh`: Integration script
- `sync-master-pane.sh`: Synchronization utilities

## Dependencies
- `tmux`: Terminal multiplexer
- `xclip`: Clipboard integration
- `zsh`: Default shell

## Workflow Integration
- **Primary Multiplexer**: Essential for development workflow
- **Long Sessions**: Optimized for 20+ hour development sessions
- **Multi-Project**: Perfect for managing multiple codebases
- **Vim Integration**: Seamless editor-terminal workflow