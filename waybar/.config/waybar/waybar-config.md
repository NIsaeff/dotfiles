# Waybar Configuration

## Overview
Waybar configuration for Niri window manager on EndeavourOS with AMD Ryzen 5 5600U.
**Theme**: Catppuccin Mocha with purple pastel accents.

## Dependencies
Required packages for full functionality:
```bash
sudo pacman -S waybar brightnessctl wireplumber swaybg
```

## Current Features (2025-08-14)
- **Niri Integration**: Workspace indicators with numbered icons, window title display
- **Hardware Monitoring**: CPU, memory, temperature monitoring
- **Audio Control**: Volume control via WirePlumber with mute toggle
- **Brightness Control**: Backlight adjustment with scroll
- **Network Status**: WiFi/Ethernet connection display
- **Battery Status**: Battery percentage with charging indicators
- **Wallpaper Switcher**: Random wallpaper cycling with swaybg
- **System Tray**: Application tray support

## Theme Details
- **Color Scheme**: Catppuccin Mocha purple pastels
- **Font**: FiraCode Nerd Font Propo (13px)
- **Icons**: Nerd Font icons throughout
- **Layout**: Rounded corners, subtle borders, hover effects

## Installation
```bash
# From dotfiles directory
stow -t ~/.config/waybar waybar
```

## Configuration Files
- `config.jsonc`: Main waybar configuration
- `style.css`: Styling and appearance

## Hardware-Specific Notes
- **AMD Temperature**: Uses `amdgpu-pci-0400` and `k10temp-pci-00c3` sensors
- **Battery**: Detects `/sys/class/power_supply/BAT*` automatically
- **Brightness**: Uses `brightnessctl` for backlight control
- **Audio**: Configured for WirePlumber (PipeWire)

## Module Layout
**Left**: Niri workspaces (`󰲠󰲢󰲤󰲦󰲨`) + window title
**Center**: Clock with calendar (`󰥔`)
**Right**: CPU (`󰘚`), Memory (`󰍛`), Temperature (`󱃃`), Volume (`󰕾`), Brightness (`󰃠`), Network (`󰖩`), Battery (`󰂂`), Wallpaper (`󰸉`), Tray

## Click Actions
- **Workspaces**: Click to switch workspace
- **CPU/Memory**: Opens htop in Alacritty
- **Volume**: Click to toggle mute, scroll to adjust volume
- **Brightness**: Scroll to adjust brightness
- **Network**: Right-click opens nmtui
- **Wallpaper**: Click to cycle through wallpapers in `~/.local/share/wallpapers/`

## Wallpaper Switcher
Custom script at `~/.local/bin/wallpaper-switch`:
- Searches `~/.local/share/wallpapers/` for images
- Uses swaybg to set random wallpaper
- Supports jpg, png, webp formats
- Shows notification on change

## Troubleshooting
- Ensure only one waybar process is running: `killall waybar && waybar &`
- Check dependencies are installed
- Verify Niri is running: `echo $XDG_CURRENT_DESKTOP` should show "niri"

## Known Issues
- Cosmetic warning: `'swap-icon-label' must be a bool` (does not affect functionality)
- Fontconfig warning (cosmetic, does not affect functionality)

## Configuration Files
- `config.jsonc`: Main waybar configuration with Niri modules
- `style.css`: Catppuccin purple theme styling
- `~/.local/bin/wallpaper-switch`: Wallpaper cycling script

## Color Palette (Catppuccin Mocha)
```css
@define-color base #1e1e2e;        /* Background */
@define-color text #cdd6f4;        /* Text */
@define-color mauve #cba6f7;       /* Primary purple */
@define-color lavender #b4befe;    /* Secondary purple */
@define-color pink #f5c2e7;        /* Accent pink */
@define-color surface0 #313244;    /* Module backgrounds */
```

## Status
✅ **Fully functional** - All modules working as of 2025-08-14
- Niri workspace integration working
- FiraCode Nerd Font icons displaying
- Catppuccin purple theme applied
- Wallpaper switcher functional with swaybg