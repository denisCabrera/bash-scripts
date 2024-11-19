#!/bin/bash
# Automates file and directory backups.

SOURCE_DIR="$1"
DEST_DIR="$2"

if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Usage: $0 /path/to/source /path/to/destination"
    exit 1
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

echo "Creating backup..."
tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .
echo "Backup created: $DEST_DIR/$BACKUP_NAME"
