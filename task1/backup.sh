#!/bin/bash

# === Configuration ===
SOURCE_DIR="/var/www/app"            # Change this to your app directory
BACKUP_DIR="/backup"
TIMESTAMP=$(date +"%Y-%m-%d")
BACKUP_NAME="app-backup-$TIMESTAMP.tar.gz"
RETENTION_DAYS=7
REQUIRED_TOOLS=("tar" "gzip" "cron")

# === Check Dependencies ===
for tool in "${REQUIRED_TOOLS[@]}"; do
    if ! command -v $tool &> /dev/null; then
        echo "Error: Required tool '$tool' is not installed." >&2
        exit 1
    fi
done

# === Create Backup Directory if Missing ===
mkdir -p "$BACKUP_DIR"

# === Create Backup ===
echo "Creating backup of $SOURCE_DIR..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_DIR/$BACKUP_NAME"
else
    echo "Backup failed!" >&2
    exit 1
fi

# === Remove Backups Older Than X Days ===
echo "Cleaning up backups older than $RETENTION_DAYS days..."
find "$BACKUP_DIR" -name "*.tar.gz" -type f -mtime +$RETENTION_DAYS -exec rm -f {} \;

echo "Cleanup complete."

exit 0


# To make script executable
#chmod +x backup.sh