#!/bin/bash
# Automates deployment of applications.

APP_NAME="$1"
GIT_REPO="https://github.com/yourusername/$APP_NAME.git"

if [ -z "$APP_NAME" ]; then
    echo "Usage: $0 app_name"
    exit 1
fi

echo "Deploying $APP_NAME..."
cd /var/www || exit
if [ ! -d "$APP_NAME" ]; then
    git clone "$GIT_REPO"
fi

cd "$APP_NAME" || exit
git pull
echo "Restarting service..."
sudo systemctl restart "$APP_NAME"
echo "$APP_NAME deployed successfully."
