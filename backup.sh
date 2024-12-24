#!/bin/bash

SOURCE_DIR="/home/ubuntu"  # Directory to backup
BACKUP_DIR="/mnt/backups"  # Directory to store backups
DATE=$(date +"%Y-%m-%d_%H-%M-%S")  # Date format for backup filenames
BACKUP_NAME="backup_$DATE.tar.gz"  # Backup filename 

# Perform the backup
 tar -czf $BACKUP_DIR/$BACKUP_NAME $SOURCE_DIR

 if [ $? -eq 0 ]; then
	     echo "Backup successful: $BACKUP_DIR/$BACKUP_NAME"
     else
	         echo "Backup failed!"
 fi
