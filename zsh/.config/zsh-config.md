# Zsh Configuration

## Overview
Modern Zsh setup optimized for development workflows with vi-mode, smart completion, and essential productivity tools.

## Key Customizations

### Path Management
- **Safe Defaults**: Comprehensive PATH with system directories first
- **User Binaries**: ~/.local/bin for personal scripts
- **Development Tools**: Cargo (Rust), ccache, Go binaries
- **Priority Order**: System → user → development tools

### Shell Enhancements
- **Starship Prompt**: Modern, informative prompt with git integration
- **Zoxide**: Smart directory jumping with `z` command (replaces cd)
- **Syntax Highlighting**: Real-time command syntax highlighting
- **Auto-suggestions**: Command completion based on history

### Vi Mode Configuration
- **Default Mode**: Vi-mode enabled with short timeout (KEYTIMEOUT=1)
- **Visual Cursor**: Dynamic cursor shape changes
  - Insert mode: Beam cursor (thin line)
  - Command mode: Block cursor (solid rectangle)
- **Startup**: Always starts in insert mode with beam cursor

### Completion System
- **Modern Completion**: Enhanced tab completion with menu selection
- **Cache**: Optimized completion cache in ~/.zsh/cache/
- **Menu Navigation**: Arrow keys and tab for selection
- **Performance**: Cached zcompdump for faster startup

### Useful Aliases
- **File Listing**: `l` (detailed), `ll` (all files) with exa and directory grouping
- **Navigation**: `cd` aliased to `z` (zoxide) for smart jumping
- **System**: `c` (clear), `updatemirrors` (Arch mirror optimization)
- **Development**: `pycharm` (professional edition), `dupeterm` (duplicate kitty)
- **Fun**: `fetch` (neofetch with lolcat rainbow effect)

### Development Integration
- **Python**: PyCharm Professional alias
- **Go**: GOBIN path configuration
- **Terminal**: Kitty duplication with current directory
- **Package Management**: Arch mirror update automation

### Performance Optimizations
- **Fast Startup**: Cached completion system
- **Efficient History**: Optimized history management
- **Plugin Loading**: Minimal plugin overhead
- **Memory Usage**: Lightweight configuration suitable for 13GB system

## Workflow Integration
- **Primary Shell**: Main interactive shell for all terminal work
- **Tmux Integration**: Seamless with tmux session management
- **Editor Integration**: Vi-mode for vim-like editing
- **Directory Navigation**: Smart jumping with zoxide

## Key Features
- **Vi Mode**: Full vim-like command line editing
- **Smart Completion**: Context-aware tab completion
- **Directory Jumping**: Frecency-based navigation with zoxide
- **Visual Feedback**: Dynamic cursor and syntax highlighting
- **Development Ready**: Optimized for coding workflows

## Files
- `.zshrc`: Main configuration file

## Dependencies
- `zsh`: Z shell
- `starship`: Modern prompt
- `zoxide`: Smart directory jumping
- `exa`: Modern ls replacement
- `zsh-syntax-highlighting`: Command highlighting
- `zsh-autosuggestions`: History-based suggestions
- `neofetch`: System information display
- `lolcat`: Rainbow text effects

## Customization Notes
- **Minimal but Functional**: Essential features without bloat
- **Performance Focused**: Fast startup and responsive interaction
- **Development Oriented**: Optimized for coding and system administration
- **Arch Linux Specific**: Includes Arch-specific aliases and paths