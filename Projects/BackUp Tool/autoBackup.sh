#!/bin/bash

# =============================
#   Automated Backup Tool
# =============================
# Description: Back up a directory to another location with timestamped folders.
# Author: S.I.Sayeed

# Configuration
SOURCE_DIR=""
DEST_DIR=""
DATE_TAG=$(date +%Y%m%d_%H%M%S)
LOG_FILE="backup_logs/backup_$DATE_TAG.log"

# Create logs directory if it doesn't exist
mkdir -p backup_logs

# Prompt user for source and destination
read -rp "Enter full path of the directory to back up: " SOURCE_DIR
read -rp "Enter destination path for the backup: " DEST_DIR

# Validate paths
if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "Source directory does not exist." | tee -a "$LOG_FILE"
    exit 1
fi

mkdir -p "$DEST_DIR"

BACKUP_NAME="backup_$(basename "$SOURCE_DIR")_$DATE_TAG.tar.gz"
BACKUP_PATH="$DEST_DIR/$BACKUP_NAME"

# Perform the backup
echo "Starting backup at $(date)" | tee -a "$LOG_FILE"
echo "Source: $SOURCE_DIR" | tee -a "$LOG_FILE"
echo "Destination: $BACKUP_PATH" | tee -a "$LOG_FILE"

tar -czf "$BACKUP_PATH" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")" 2>>"$LOG_FILE"

if [[ $? -eq 0 ]]; then
    echo "Backup successful: $BACKUP_PATH" | tee -a "$LOG_FILE"
else
    echo "Backup failed." | tee -a "$LOG_FILE"
    exit 1
fi

echo "Backup completed at $(date)" | tee -a "$LOG_FILE"
