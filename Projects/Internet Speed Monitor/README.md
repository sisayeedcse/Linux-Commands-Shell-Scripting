# 🌐 Internet Speed Monitor

A lightweight Bash script that periodically checks your internet speed, logs the results, and alerts you if the download speed drops below a set threshold.

---

## ✅ Features

- Runs an internet speed test at regular intervals (default: every 5 minutes)
- Logs results with timestamps
- Alerts if download speed is below the threshold (default: 10 Mbps)
- Simple and fully automated
- Minimal dependencies

---

## 🛠️ Requirements

- Linux/Unix-like system with Bash
- [`speedtest-cli`](https://github.com/sivel/speedtest-cli)

### Install `speedtest-cli`:

```bash
# Using pip (recommended)
pip install speedtest-cli

# Or on Ubuntu/Debian
sudo apt install speedtest-cli

🚀 How to Use
Clone this repository:
git clone https://github.com/sisayeedcse/internet-speed-monitor.git
cd internet-speed-monitor

Make the script executable:
chmod +x monitor.sh

Run the script:
./monitor.sh

The script will:

Run a speed test every 5 minutes
Save logs in speed_logs/
Show alerts if download speed is too low

👤 Author
Sayeed Ibne Saif
