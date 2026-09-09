#!/bin/bash

#1) Author: Sondos Mohamed
#2) Created: 09-09-2026
#3) Last Modified: 09-09-2026

#4) Description: A utility helps you to keep your system clear of unnecessary files
#   by allowing you to delete files that haven't been modified for a certain period of time or more
#   (by default 90 days)
#   Search in subfolders with maximum 2 depth and not allowed to delete from root folders.

#5) Usage:
# cruft_remover.sh

read -r -p  "Enter which folder you want to remove from (e.g., Downloads): " folders 
read -r -p "Enter the days since its last modification: " days

readarray -t data_arr < <(find $HOME/${folders}* -maxdepth 2 -mtime +${days:-90} -type f)
num_items=${#data_arr[@]}

if [ $num_items != 0 ];then
    echo "$num_items files are found in ${folders} folder"
    for data in ${data_arr[@]}; do
        rm -i "${data}"
    done
else 
    echo "No files in ${folders} folder."
fi
