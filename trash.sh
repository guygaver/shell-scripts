#!/usr/bin/env bash
# This script will trash files in the event you are unable to trash them via the GUI but 
# do have sudo privileges on your computer

FILE=$1
USER=$(whoami)
TRASH_PATH=/Users/${USER}/.Trash

if [[ ${FILE} = "" ]]
then
    echo "Must pass a file"
    exit 0
fi

if [[ ! -e ${FILE} ]] 
then
    echo "File does not exist"
    exit 0
fi

sudo mv "$FILE" "$TRASH_PATH"