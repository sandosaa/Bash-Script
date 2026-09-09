#!/bin/bash

#1) Author: Sondos Mohamed
#2) Created: 09-09-2026
#3) Last Modified: 09-09-2026

#4) Description: A tool to present the user with a menu for running 
#   available scrips.

#5) Usage:
#   toolkit.sh

PS3="Choose which script do you want to run?: "
select opt in "cruft_remover.sh" "folder_organiser.sh";do
    case "$opt" in
	"cruft_remover.sh" ) ./cruft_remover.sh;;
	"folder_organiser.sh" ) ./folder_organiser.sh;;
    esac
    break
done
