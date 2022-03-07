#!/bin/bash

# Creates a GPG-encrypted automated backup
# Ben Stokman <ben.stokman@protonmail.com>

# $1: Backup data path
# $2: Backup name without extension
# $3: Backup save location
# $4: Recipent key fingerprint
# $5: Signing key fingerprint
# $6: temp directory

7z a "$6/$2.7z" -m0=lzma2 "$1"

gpg -v -o "$3/$2.7z.gpg" --cipher-algo AES256 --sign-with "$5" -r "$4" --sign --encrypt "$6/$2.7z"

rm "$6/$2.7z"

exit
