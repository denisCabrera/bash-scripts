#!/bin/bash
# Runs a list of tasks sequentially.

for TASK in "$@"; do
    echo "Running $TASK..."
    if bash "$TASK"; then
        echo "$TASK completed successfully."
    else
        echo "Error running $TASK."
    fi
done
