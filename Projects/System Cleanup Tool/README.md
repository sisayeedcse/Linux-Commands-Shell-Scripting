# 🧹 System Cleanup Script

A simple Bash script to automate system cleanup tasks like clearing temporary files, cache, and trash. Useful for keeping your Linux system clean and freeing up disk space.

---

## ✅ Features

- Deletes:
  - Temporary files in `/tmp`
  - APT package cache
  - Thumbnail cache
  - Trash files
  - Firefox cache (you can add other browsers)
- Asks for confirmation before each action
- Logs all cleanup actions with timestamps

---

## 🚀 How to Use

1. Clone this repository or download the script.
2. Make the script executable:

   ```bash
   chmod +x cleanup.sh
Run the script:
  ./cleanup.sh

Follow the interactive prompts to clean your system.

🛠️ Requirements
Linux OS (Ubuntu/Debian recommended)

Basic shell environment

sudo privileges (for /tmp and apt cache cleanup)
📋 Sample Output:

Clean /tmp directory? [y/N]: y
/tmp cleaned
Clean apt cache? [y/N]: n
Skipped.
...
Cleanup completed at 2025-05-19

🗂️ Logs
Logs are saved in the cleanup_logs/ folder with timestamps.

📅 Optional: Automate with Cron
To schedule cleanup weekly, open crontab:
crontab -e
Add:0 9 * * 1 /path/to/cleanup.sh

🧑‍💻 Author
Sayeed Ibne Saif : [linkedin.com/in/sisayeedofficial](https://www.linkedin.com/in/sisayeedofficial/)

📄 License
MIT – feel free to use and modify.
