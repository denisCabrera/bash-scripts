#!/bin/bash
# Simplifies user management.

ACTION="$1"
USER="$2"

case "$ACTION" in
    add)
        sudo useradd -m "$USER" && echo "User $USER added."
        ;;
    delete)
        sudo userdel -r "$USER" && echo "User $USER deleted."
        ;;
    *)
        echo "Usage: $0 {add|delete} username"
        exit 1
        ;;
esac
