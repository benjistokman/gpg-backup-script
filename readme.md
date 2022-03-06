# GPG Backup Script

Creates a gpg-encrypted 7z backup.

I made this to be used for a cron job so I don't have to back up stuff manually.

Usage: `bash gpg-backup.sh "<path for data to be backed up>" "<backup filename without extension>" "<where the backup will be savd>" "<recepient key ID>" "<signing key ID>" "<a temp directory>"`
