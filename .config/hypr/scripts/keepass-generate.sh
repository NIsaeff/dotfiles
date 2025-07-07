#!/bin/bash
# Generate and optionally save new password

PASSWORD=$(keepassxc-cli generate -l 20 -n -s)
echo "$PASSWORD" | wl-copy
notify-send "KeePassXC" "Generated password copied to clipboard"

# Optionally prompt to save
if [ "$(echo -e "Yes\nNo" | rofi -dmenu -p "Save to database?")" = "Yes" ]; then
    SITE=$(rofi -dmenu -p "Site name:")
    USERNAME=$(rofi -dmenu -p "Username:")
    keepassxc-cli add ~/Documents/Passwords.kdbx "$SITE" --username "$USERNAME" --password "$PASSWORD"
fi
