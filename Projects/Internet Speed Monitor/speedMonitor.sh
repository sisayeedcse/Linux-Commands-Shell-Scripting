#!/bin/bash

# ================================
#  Internet Speed Monitor Script
# ================================
# Description: Periodically checks and logs internet speed.
# Author: S.I.Sayeed

# Requires: speedtest-cli (install via pip or package manager)

LOG_DIR="speed_logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/speedlog_$(date +%Y%m%d).log"

# Interval between checks in seconds
INTERVAL=300  # 5 minutes

# Minimum acceptable download speed in Mbps
THRESHOLD=10

# Check if speedtest-cli is installed
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli is not installed. Please install it first."
    exit 1
fi

# Run monitoring loop
while true; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    echo "\n[$TIMESTAMP] Running speed test..." | tee -a "$LOG_FILE"

    RESULT=$(speedtest-cli --simple)
    DOWNLOAD=$(echo "$RESULT" | grep "Download" | awk '{print $2}')

    echo "$RESULT" | tee -a "$LOG_FILE"

    if (( $(echo "$DOWNLOAD < $THRESHOLD" | bc -l) )); then
        echo "[ALERT] Download speed ($DOWNLOAD Mbps) below threshold ($THRESHOLD Mbps)" | tee -a "$LOG_FILE"
    fi

    sleep "$INTERVAL"
done
