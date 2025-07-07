#!/bin/bash
# Auto-fill credentials

DB_PATH="$HOME/.kdbx"
ENTRY=$(keepassxc-cli ls "$DB_PATH" | rofi -dmenu -p "Auto-fill:")

if [ -n "$ENTRY" ]; then
    USERNAME=$(keepassxc-cli show "$DB_PATH" "$ENTRY" -a username)
    PASSWORD=$(keepassxc-cli show "$DB_PATH" "$ENTRY" -a password)
    
    # Type username, tab, password, enter
    wtype "$USERNAME"
    wtype -k Tab
    wtype "$PASSWORD"
    wtype -k Return
fi
