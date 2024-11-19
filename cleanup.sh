#!/bin/bash
# Cleans up temporary and unused files.

DRY_RUN=false

while getopts "d" opt; do
    case "$opt" in
        d) DRY_RUN=true ;;
    esac
done

TEMP_FILES=$(find /tmp -type f -atime +7)
echo "Cleaning up files older than 7 days..."

for FILE in $TEMP_FILES; do
    if $DRY_RUN; then
        echo "Would delete: $FILE"
    else
        rm -f "$FILE"
        echo "Deleted: $FILE"
    fi
done
