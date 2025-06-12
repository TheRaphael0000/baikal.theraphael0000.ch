#!/usr/bin/zsh
backupFolder=/mnt/samba/backups/baikal.theraphael0000.ch
monthlyArchive=${backupFolder}/$(date +"%Y%m")_baikal.theraphael0000.ch.zip
dbFile=/opt/baikal.theraphael0000.ch/data/db/db.sqlite
tmpFile=/tmp/$(date +"%Y%m%d%H%M%S")_db.sqlite
cp $dbFile $tmpFile && zip -j -u $monthlyArchive $tmpFile && rm $tmpFile
