#!/bin/bash
# Simple TOTP retrieval

DB_PATH="$HOME/Documents/Passwords.kdbx"

if [ $# -eq 0 ]; then
    echo "Usage: $0 <entry_name>"
    echo "Available TOTP entries:"
    keepassxc-cli ls "$DB_PATH" | while read entry; do
        if keepassxc-cli show "$DB_PATH" "$entry" -a totp 2>/dev/null | grep -q "^[0-9]"; then
            echo "  - $entry"
        fi
    done
    exit 1
fi

ENTRY="$1"
TOTP_CODE=$(keepassxc-cli show "$DB_PATH" "$ENTRY" -a totp 2>/dev/null)

if [ -n "$TOTP_CODE" ]; then
    echo "$TOTP_CODE" | wl-copy
    echo "TOTP code copied to clipboard: $TOTP_CODE"
else
    echo "No TOTP found for entry: $ENTRY"
fi
