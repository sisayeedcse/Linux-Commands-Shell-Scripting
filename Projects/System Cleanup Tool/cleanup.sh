#!/bin/bash

# =============================
#   System Cleanup Script
# =============================
# Description: Cleans temp files, apt cache, and trash.
# Author: S.I.Sayeed

LOG_FILE="cleanup_logs/cleanup_$(date +%Y%m%d_%H%M%S).log"

# Create logs directory if it doesn't exist
mkdir -p cleanup_logs

echo "Starting system cleanup at $(date)" | tee -a "$LOG_FILE"

# Function to confirm action
confirm() {
    read -rp "$1 [y/N]: " response
    case "$response" in
        [yY][eE][sS]|[yY])
            return 0
            ;;
        *)
            echo "Skipped." | tee -a "$LOG_FILE"
            return 1
            ;;
    esac
}

# Clean /tmp directory
if confirm "Clean /tmp directory?"; then
    sudo rm -rf /tmp/* && echo "/tmp cleaned" | tee -a "$LOG_FILE"
fi

# Clean apt cache
if confirm "Clean apt cache?"; then
    sudo apt-get clean && echo "APT cache cleaned" | tee -a "$LOG_FILE"
fi

# Clean thumbnail cache (for GUI users)
if confirm "Clean thumbnail cache (~/.cache/thumbnails)?"; then
    rm -rf ~/.cache/thumbnails/* && echo "Thumbnail cache cleaned" | tee -a "$LOG_FILE"
fi

# Clean Trash
if confirm "Empty Trash (~/.local/share/Trash)?"; then
    rm -rf ~/.local/share/Trash/* && echo "Trash emptied" | tee -a "$LOG_FILE"
fi

# Clean browser cache (Firefox example)
if confirm "Clean Firefox cache (~/.cache/mozilla)?"; then
    rm -rf ~/.cache/mozilla/* && echo "Firefox cache cleaned" | tee -a "$LOG_FILE"
fi

echo "Cleanup completed at $(date)" | tee -a "$LOG_FILE"
