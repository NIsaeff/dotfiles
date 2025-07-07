#!/bin/bash
# Automated database backup

DB_PATH="$HOME/.kdbx"
BACKUP_DIR="$HOME/.local/share/keepassxc/backups"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p "$BACKUP_DIR"
cp "$DB_PATH" "$BACKUP_DIR/passwords_$DATE.kdbx"

# Keep only last 10 backups
ls -t "$BACKUP_DIR"/*.kdbx | tail -n +11 | xargs -r rm
