#!/bin/bash
# Performs system health check.

echo "Checking CPU temperature..."
if sensors; then
    echo "Sensors output above."
else
    echo "Install lm-sensors for CPU temperature checks."
fi

echo "Checking package updates..."
sudo apt update && sudo apt list --upgradable

echo "Service Status:"
systemctl list-units --type=service --state=failed
