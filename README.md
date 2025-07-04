# dotfiles
# 🚀 Arch Linux Hyprland Dotfiles

My personal dotfiles for a complete Arch Linux setup running Hyprland compositor. This repository contains configurations for a modern, efficient, and aesthetically pleasing desktop environment.

## 🖥️ Setup Overview

- **OS**: Arch Linux
- **Window Manager**: Hyprland (Wayland)
- **Status Bar**: Waybar
- **Terminal**: Kitty
- **Shell**: Zsh
- **App Launcher**: Rofi
- **Notifications**: Dunst
- **File Manager**: Thunar
- **Editor**: Neovim

## 📁 Repository Structure

```
dotfiles/
├── hyprland/          # Hyprland window manager config
├── waybar/            # Status bar configuration
├── kitty/             # Terminal emulator config
├── rofi/              # Application launcher
├── dunst/             # Notification daemon
├── zsh/               # Shell configuration
├── nvim/              # Neovim editor config
├── git/               # Git configuration
├── gtk/               # GTK theme settings
├── fontconfig/        # Font configuration
└── scripts/           # Custom utility scripts
```

## 🔧 Prerequisites

Before installing these dotfiles, ensure you have the following packages installed:

### Essential Packages
```bash
# Core Hyprland and Wayland
sudo pacman -S hyprland waybar kitty rofi dunst

# System utilities
sudo pacman -S stow git base-devel

# Fonts
sudo pacman -S ttf-font-awesome ttf-fira-code noto-fonts noto-fonts-emoji

# Audio
sudo pacman -S pipewire pipewire-pulse pipewire-alsa

# Additional utilities
sudo pacman -S thunar grim slurp wl-clipboard brightnessctl pamixer
```

### AUR Packages (optional)
```bash
# AUR helper (yay)
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si

# Additional utilities
yay -S hyprpaper-git wlogout
```

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/NIsaeff/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Backup Existing Configs (Important!)
```bash
# Create backup directory
mkdir -p ~/.config/backup

# Backup existing configurations
cp -r ~/.config/hypr ~/.config/backup/ 2>/dev/null || true
cp -r ~/.config/waybar ~/.config/backup/ 2>/dev/null || true
cp -r ~/.config/kitty ~/.config/backup/ 2>/dev/null || true
# Add other configs as needed
```

### 3. Install Configurations
```bash
# Install all configurations
./install.sh

# Or install individual packages
stow hyprland
stow waybar
stow kitty
# etc.
```

### 4. Set Default Shell (if using zsh)
```bash
chsh -s $(which zsh)
```

## 🎨 Customization

### Colors and Themes
The color scheme is defined in `hyprland/.config/hypr/colors.conf`. Modify these values to change the overall theme:

```conf
# Example color variables
$primary = rgb(74, 144, 226)
$background = rgb(30, 30, 46)
$foreground = rgb(205, 214, 244)
```

### Keybindings
Main keybindings are defined in `hyprland/.config/hypr/keybinds.conf`:

- `Super + Return` - Open terminal
- `Super + D` - Launch rofi
- `Super + Q` - Close window
- `Super + F` - Toggle fullscreen
- `Super + [1-9]` - Switch workspaces

### Waybar Configuration
Customize your status bar in `waybar/.config/waybar/config`. Modules can be added/removed and styled in `waybar/.config/waybar/style.css`.

## 🛠️ Troubleshooting

### Common Issues

**Hyprland won't start:**
```bash
# Check logs
journalctl -u display-manager
# Or if using startx
cat ~/.local/share/xorg/Xorg.0.log
```

**Waybar not showing:**
```bash
# Kill and restart waybar
pkill waybar
waybar &
```

**Fonts not displaying correctly:**
```bash
# Rebuild font cache
fc-cache -fv
```

**Audio not working:**
```bash
# Restart pipewire
systemctl --user restart pipewire pipewire-pulse
```

## 📝 Scripts

Custom scripts are located in `scripts/` directory:

- `screenshot.sh` - Screenshot utility using grim and slurp
- `volume.sh` - Volume control script
- `brightness.sh` - Brightness control
- `power-menu.sh` - Power options menu

Make scripts executable:
```bash
chmod +x scripts/*.sh
```

## 🔄 Updating

To update your dotfiles:

```bash
cd ~/dotfiles
git pull origin main

# Re-stow any updated packages
stow */
```

## 🎯 Features

- **Tiling Window Management**: Efficient workspace organization
- **Custom Keybindings**: Optimized for productivity
- **Modern Aesthetics**: Clean, minimal design
- **Performance Optimized**: Lightweight and fast
- **Wayland Native**: Future-proof display protocol
- **Modular Configuration**: Easy to customize individual components

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for improvements. Issues and suggestions are welcome!

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Hyprland](https://hyprland.org/) - Amazing Wayland compositor
- [Waybar](https://github.com/Alexays/Waybar) - Highly customizable status bar
- [Arch Linux](https://archlinux.org/) - Best Linux distribution
- The open-source community for amazing tools and inspiration

## 📧 Contact

If you have any questions or suggestions, feel free to open an issue or reach out!

---

⭐ If you found this helpful, consider giving it a star!
