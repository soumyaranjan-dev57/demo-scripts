#!/bin/bash

<<info
this shell script will take periodic backups
eg.
./backup.sh <source> <destination>
src=/home/soumya/scripts
dest /home/soumya/backups
info

src=$1
dest=$2

timestamp=$(date '+%y-%m-%d-%H-%M')

 zip -r  "$dest/backup-$timestamp.zip" "$src" > /dev/null

aws s3 sync "$dest" s3://tws-backups-srb

 echo "backup done  and uploaded to s3 "
