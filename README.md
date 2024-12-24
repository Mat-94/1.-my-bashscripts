Script Overview for each script
Purpose: Monitor disk usage and trigger an alert if it exceeds a defined threshold.
Threshold: Default set to 80%, but can be adjusted.
Alert Method: Console output (can be adapted for email notifications).


explanation of backup.sh
Explanation
Configuration:

SOURCE_DIR: Directory you want to back up (e.g., your home directory).
BACKUP_DIR: Directory where the backup will be stored (e.g., /mnt/backups).
DATE: Creates a timestamp for each backup file.
BACKUP_NAME: Defines the backup file name using the timestamp.
Backup Command: The script uses tar to create a compressed archive of the source directory. The -czf options mean:

-c: Create a new archive.
-z: Compress the archive using gzip.
-f: Specify the output file.
Success Check:

After running the tar command, the script checks whether the command was successful using $?. If successful, it prints a success message; otherwise, it prints a failure message.
