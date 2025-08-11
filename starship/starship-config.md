# Starship Configuration

## Overview
Minimal, fast shell prompt inspired by Prezto's Sorin theme with modern enhancements and development-focused features.

## Key Customizations

### Layout Design
- **Split Prompt**: Minimal left side, detailed right side
- **No Newlines**: Compact single-line design
- **Left Side**: Python environment + directory + prompt character
- **Right Side**: Exit status + git branch + git status

### Prompt Character
- **Success**: Multi-colored chevrons `❯❯❯` (red→yellow→green)
- **Error**: Same styling (consistent visual)
- **Vi Mode**: Reverse chevrons `❮❮❮` (green→yellow→red) in command mode
- **Visual Feedback**: Clear mode indication for vi users

### Git Integration
- **Branch Display**: Bold green branch name
- **Status Symbols**:
  - `✚` Staged files (green)
  - `✱` Modified files (blue)
  - `✖` Deleted files (red)
  - `➜` Renamed files (purple)
  - `◼` Untracked files (white)
  - `✭` Stashed changes (cyan)
  - `═` Conflicted files (yellow)
  - `⬆` Ahead of remote (purple)
  - `⬇` Behind remote (purple)

### Directory Display
- **Style**: Blue coloring for visibility
- **Truncation**: Fish-style with single character abbreviation
- **Length**: Minimal truncation (1 level) for context
- **No Symbol**: Clean appearance without truncation indicator

### Python Development
- **Virtual Environment**: Shows active venv/conda environment
- **Format**: `(env_name)` in white
- **Integration**: Seamless with Python ML/AI workflows

### Performance
- **Fast Rendering**: Optimized for quick prompt display
- **Minimal Modules**: Only essential information shown
- **Efficient**: Suitable for long development sessions

## Design Philosophy
- **Information Density**: Maximum info in minimal space
- **Visual Hierarchy**: Important info on left, context on right
- **Consistency**: Uniform styling across all elements
- **Development Focus**: Git and Python environment priority

## Files
- `starship.toml`: Main configuration file

## Dependencies
- `starship`: Cross-shell prompt
- `git`: Version control integration
- `python`: Virtual environment detection

## Workflow Integration
- **Zsh Integration**: Initialized in .zshrc
- **Vi Mode**: Responsive to zsh vi-mode changes
- **Git Workflows**: Comprehensive status at a glance
- **Python Development**: Virtual environment awareness