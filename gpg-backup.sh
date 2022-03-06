#!/bin/bash

# Creates a GPG-encrypted automated backup
# Ben Stokman <ben.stokman@protonmail.com>

# $1: Backup data path
# $2: Backup name without extension
# $3: Backup save location
# $4: Recipent key fingerprint
# $5: Signing key fingerprint
# $6: temp directory

bdir="$1"
cdir="$6"
sdir="$3"

7z a "$cdir/$2.7z" -mhe=on -m0=lzma2 "$bdir"

gpg -v -o "$sdir/$2.7z.gpg" --cipher-algo AES256 --sign-with "$5" -r "$4" --sign --encrypt "$cdir/$2.7z"

rm "$cdir/$2.7z"

exit
