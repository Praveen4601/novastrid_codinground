# System Backup Script

## Description
This shell script automates the backup of application files and logs, cleans up old backups, checks for required dependencies, and is designed to be scheduled with cron.

---

## How to Run the Script

### 1. Modify Configuration
Edit backup.sh to specify:
- SOURCE_DIR – Directory to back up (e.g., /var/www/app)
- BACKUP_DIR – Where to store backups (e.g., /backup)

### 2. Make the Script Executable
```bash
chmod +x backup.sh


### 3. Schedule with Cron
Edit Crontab
crontab -e
0 0 * * * /full/path/to/backup.sh >> /var/log/backup.log 2>&1

