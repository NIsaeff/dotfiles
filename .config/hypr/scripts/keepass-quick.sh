#!/bin/bash
# Quick KeePassXC access script

if pgrep -x "keepassxc" > /dev/null; then
    # If running, check if window is visible
    if hyprctl activewindow | grep -q "keepassxc"; then
        # If active, minimize/hide it
        hyprctl dispatch movetoworkspace special:keepass,keepassxc
    else
        # If not active, bring to front
        hyprctl dispatch focuswindow keepassxc
    fi
else
    # If not running, start it
    keepassxc &
fi
