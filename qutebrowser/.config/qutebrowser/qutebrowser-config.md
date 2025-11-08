# Qutebrowser Configuration

## Overview
Vim-like keyboard-driven web browser optimized for Wayland, memory efficiency, and development workflows.

## Key Customizations

### Performance & Memory
- **Memory Optimization**: Reduced motion, efficient blocking, limited undo stack
- **Content Blocking**: Built-in + hosts file blocking for faster browsing
- **Auto-save Sessions**: Persistent browsing state
- **Lazy Restore**: Tabs load only when accessed

### Wayland Integration
- **Platform**: Auto-detect with Wayland preference
- **HiDPI**: Enabled for 2240×1400 display
- **Native Performance**: Optimized for Wayland display server

### Visual & UX
- **Dark Mode**: Enabled with dark background (#1e1e1e)
- **Font**: System monospace (11pt) for consistency
- **Tabs**: Top position, background loading, smart removal
- **Downloads**: Auto-save to ~/Downloads, 3-second auto-remove

### Vim-like Navigation
- **Tab Management**: J/K for prev/next tab, d to close, u to undo
- **Page Navigation**: Standard vim bindings (hjkl, gg, G)
- **Hints**: gi for input focus, gf for view source
- **Quick Commands**: go/gO for URL editing, gt for tab selection

### Content Controls
- **Toggle Bindings**:
  - `,p`: Toggle plugins
  - `,j`: Toggle JavaScript
  - `,i`: Toggle images
- **Privacy**: Geolocation/notifications require permission
- **Security**: Canvas reading disabled, autoplay blocked

### Search Engines
- **Default**: DuckDuckGo (privacy-focused)
- **Shortcuts**:
  - `g`: Google search
  - `gh`: GitHub search
  - `aw`: Arch Wiki search
  - `aur`: AUR package search
  - `py`: Python documentation

### Development Features
- **PDF.js**: Built-in PDF viewing
- **Source Viewing**: gf keybinding
- **Download Management**: gd for quick downloads
- **Session Management**: Automatic session persistence

## Files
- `config.py`: Main Python configuration
- `bookmarks/urls`: Bookmark storage
- `quickmarks`: Quick bookmark access

## Dependencies
- `qutebrowser`: Keyboard-driven browser
- `python-adblock`: Content blocking (optional)

## Workflow Integration
- **Primary Browser**: Main web browser for development and research
- **Keyboard-Driven**: Minimal mouse usage required
- **Memory Efficient**: Suitable for 13GB RAM system
- **Wayland Native**: Seamless integration with Niri compositor