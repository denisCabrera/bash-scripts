#!/bin/bash
# Analyzes log files.

LOG_FILE="$1"
if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 /path/to/logfile"
    exit 1
fi

echo "Top 10 Errors:"
grep -i "error" "$LOG_FILE" | sort | uniq -c | sort -nr | head -10
