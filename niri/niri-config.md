# Niri Configuration

## Overview
Custom Niri (Wayland tiling compositor) configuration optimized for EndeavourOS with AMD Ryzen 5 5600U and integrated graphics.

## Key Customizations

### Display & Hardware
- **Resolution**: 2240×1400 @ 60Hz (eDP-1)
- **Scaling**: 1.25x for optimal readability on high-DPI display
- **AMD Graphics**: Optimized for integrated Radeon Vega graphics

### Visual Effects
- **Rounded Corners**: 12px radius for ALL windows (universal)
- **Transparency**: Per-app opacity settings
- **Per-App Opacity**:
  - Firefox: 98% (readability priority)
  - Alacritty: 85% (terminal transparency, works when focused)
  - Kitty: 92% (terminal transparency)
  - Nautilus: 95% (file manager)
  - VS Code: 96% (coding environment)
- **Focus Effects**: Purple borders/rings for non-transparent windows only

### Layout & Navigation
- **Gaps**: 8px between windows
- **Focus Ring**: 2px purple border (#7c3aed) - disabled for transparent windows
- **Column Presets**: 33%, 50%, 66% width options
- **Vim-style Navigation**: hjkl for window/column movement
- **Universal Rounded Corners**: 12px radius with clip-to-geometry

### Key Bindings
- **Mod Key**: Super (Windows key)
- **Applications**:
  - `Mod+T/Return`: Alacritty terminal
  - `Mod+D`: Fuzzel launcher
  - `Mod+B`: Firefox browser
- **Window Management**: Vim-style hjkl navigation
- **Workspaces**: 1-5 with Mod+number
- **Screenshots**: Print key with grim/slurp integration

### Input Configuration
- **Touchpad**: Tap-to-click, natural scrolling, palm detection
- **Keyboard**: US layout
- **Cursor**: Adwaita theme, 24px size

### System Integration
- **Auto-start**: Alacritty terminal on login
- **Volume/Brightness**: Hardware key support via wpctl/brightnessctl
- **Environment**: Wayland-native with QT_QPA_PLATFORM=wayland

## Files
- `config.kdl`: Main Niri configuration file

## Dependencies
- `niri`: Wayland tiling compositor
- `fuzzel`: Application launcher
- `grim` + `slurp`: Screenshot tools
- `brightnessctl`: Brightness control
- `wpctl`: Audio control (PipeWire)

## Known Issues & Solutions

### Transparency + Focus Effects Conflict
**Problem**: Window opacity rules don't work on focused windows when `focus-ring` or `border` are enabled globally in layout section.

**Symptom**: Transparency only works on unfocused windows.

**Root Cause**: Global focus-ring and border settings in `layout {}` section interfere with per-window `opacity` rules.

**Solution**: Explicitly disable focus effects in window rules that need transparency:
```kdl
window-rule {
    match app-id="Alacritty"
    opacity 0.85
    
    // Required to make opacity work on focused windows
    focus-ring { off }
    border { off }
}
```

**Alternative**: Remove global focus-ring/border from layout section and add them per-window as needed.

**Current Implementation**: Focus effects are applied only to non-transparent windows using exclude rules, allowing transparency to work properly while maintaining visual focus indication for opaque windows.