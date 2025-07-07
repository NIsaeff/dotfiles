#!/bin/bash
# Quick password lookup with rofi

DB_PATH="$HOME/Documents/Passwords.kdbx"
ENTRY=$(keepassxc-cli ls "$DB_PATH" | rofi -dmenu -p "Select entry:")

if [ -n "$ENTRY" ]; then
    keepassxc-cli clip "$DB_PATH" "$ENTRY"
    notify-send "KeePassXC" "Password copied to clipboard"
fi
