#!/bin/bash

#1) Author: Sondos Mohamed
#2) Created: 09-09-2026
#3) Last Modified: 09-09-2026

#4) Description: A Folder organiser to organise the contents of desired folder.

#5) Usage:
#   folder_organizer 

PS3="Which folder you want to organise?: "
select opt in "Current folder" "Another folder";do
	if [ "$opt" = "Current folder" ];then
	    fp=$(pwd)
	else
            read -r -p "Enter the folder name (include the path after home e.g., Documents/study): " folder
            fp="$HOME/${folder}"
	fi

        if [ -d "${fp}" ];then
            while read -r contents; do 
                case "$contents" in 
                    *.jpg | *.jpeg | *.png ) mkdir -p "$fp"/images && mv "$fp"/"$contents" "$fp"/images ;;
                    *.doc | *.docx | *.txt| *.pdf ) mkdir -p "$fp"/documents && mv "$fp"/"$contents" "$fp"/documents ;;
                    *.xls | *.xlsx | *.csv ) mkdir -p "$fp"/spreadsheets && mv "$fp"/"$contents" "$fp"/spreadsheets ;;
                    *.sh ) mkdir -p "$fp"/scripts && mv "$fp"/"$contents" "$fp"/scripts ;;
                    *.zip | *.tar | *.tar.gz | *.tar.bz2 ) mkdir -p "$fp"/archives && mv "$fp"/"$contents" "$fp"/archives ;;
                    *.ppt | *.pptx ) mkdir -p "$fp"/presentations && mv "$fp"/"$contents" "$fp"/presentations ;;
                    *.mp3 ) mkdir -p "$fp"/audio && mv "$fp"/"$contents" "$fp"/audio ;;
                    *.mp4 | *.webm ) mkdir -p "$fp"/video && mv "$fp"/"$contents" "$fp"/video ;;

                esac
            done < <(ls "${fp}")
            echo "Done!"
	else 
            echo "Can't find this folder."
	fi
        break
done


