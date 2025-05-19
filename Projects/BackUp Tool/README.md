# 💾 Automated Backup Tool

A simple and interactive shell script to back up any directory to a destination of your choice. It compresses the backup and saves it with a timestamp, along with logs of every backup run.

---

## ✅ Features

- Takes user input for source and destination folders
- Compresses the backup as a `.tar.gz` archive
- Names backup with a timestamp
- Creates a log for every run
- Validates user inputs before backing up

---

## 🚀 How to Use

1. Clone this repository or download the script:

   ```bash
   git clone https://github.com/sisayeedcse/automated-backup-tool.git
   cd automated-backup-tool
Make the script executable:
chmod +x backup.sh
Run the script:
./backup.sh
Follow the prompts to enter:
The directory you want to back up
The destination directory to store the backup file

🛠️ Requirements
Linux-based system
Bash shell
tar command (preinstalled on most systems)

🗂️ Example Output
Enter full path of the directory to back up: /home/user/Documents
Enter destination path for the backup: /home/user/Backups
Starting backup at Mon May 19 10:25:36 AM
Source: /home/user/Documents
Destination: /home/user/Backups/backup_Documents_20250519_102536.tar.gz
Backup successful.

🕒 Optional: Schedule Backups
To schedule this backup to run daily or weekly, use cron. Example for weekly backup:     crontab -e
Add this line to run every Sunday at 2 AM: 0 2 * * 0 /path/to/backup.sh

📄 License
MIT – free to use, modify, and distribute.

👤 Author : Sayeed Ibne Saif https://www.linkedin.com/in/sisayeedofficial/
