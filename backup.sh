#!/bin/bash

SOURCE_DIR="/home/osboxes/test/"
TARGET_DIR="/tmp/backup/"

rsync -a --delete --checksum --exclude=".*" "$SOURCE_DIR" "$TARGET_DIR" > /dev/null 2>> /home/osboxes/backup.log

if [ $? -eq 0 ]; then
    echo "[$(date)] Резервное копирование успешно выполнено" >> /home/osboxes/backup.log
else
    echo "[$(date)] Ошибка при выполнении резервного копирования" >> /home/osboxes/backup.log
fi

