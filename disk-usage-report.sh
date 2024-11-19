#!/bin/bash
# Generates disk usage report.

DIR=${1:-.}
echo "Disk usage for $DIR:"
du -ah "$DIR" | sort -rh | head -10
