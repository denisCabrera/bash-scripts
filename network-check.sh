#!/bin/bash
# Checks network connectivity and speeds.

HOST=${1:-google.com}

echo "Pinging $HOST..."
ping -c 4 "$HOST"

echo "Running speed test..."
if command -v speedtest-cli &> /dev/null; then
    speedtest-cli
else
    echo "Install speedtest-cli for speed test functionality."
fi
