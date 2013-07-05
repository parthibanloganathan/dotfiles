#!/bin/bash
# Script by Jim Collings
# Written Sat Jan 30 14:01:38 EST 2010
# A simple trash script that handles spaces and integrates properly with KDE4 Trash system.
# Handles spaces properly according to every test I've devised so far. 

# Belongs in /usr/local/bin with permission 755

set -e

TRASHLOC="$HOME/.local/share/Trash"

function move_it {
 COUNTER=0
 TARGET_BASE_NAME=`/usr/bin/basename "$*"`
 TARGET_FILE_NAME="${TRASHLOC}/files/${TARGET_BASE_NAME}"  
 TARGET_INFO_NAME="${TRASHLOC}/info/${TARGET_BASE_NAME}"
 XTENSION=""
 
 while [ -e "${TARGET_FILE_NAME}${XTENSION}" ]
 do    
   let COUNTER+=1
   XTENSION="_${COUNTER}"
 done

OLDDIR=`pwd` 

cd "`dirname "$*"`"
 
 FULLPATH=`pwd`
 FULLPATH="${FULLPATH}/"`/usr/bin/basename "$*"`
 FULLPATH=`echo "${FULLPATH}" | sed 's/ /%20/g'`

 cd "${OLDDIR}"
 
 mv -n "$*" "${TARGET_FILE_NAME}${XTENSION}"
 echo "[Trash Info]" > "${TARGET_INFO_NAME}${XTENSION}.trashinfo"
 echo "Path="${FULLPATH} >> "${TARGET_INFO_NAME}${XTENSION}.trashinfo"
 echo DeletionDate=`date +%Y-%m-%dT%H:%M:%S` >> "${TARGET_INFO_NAME}${XTENSION}.trashinfo" 
}


until [ -z "$1" ]  # Until all parameters used up...
do

      if [ -d "$1" ]; then #its a directory 
	  move_it "$1"
      elif [ -f "$1" ];then #its a file
	  move_it "$1"
	elif [ -h "$1" ];then #its just a link
	  rm -f "$1"
       else
              echo "Error condition: '""$1""' not found." 
              echo "Usage: $0 [Pathnames]"
              echo "Where [Pathname] is a list of space delimited existing files or directories the current user has permissions for." 
              echo "So like this: $0 file1 '""file two with spaces""' directoryOne '""directory two with spaces in the name""' ..." 
              exit 1
      fi

      shift

done
                                         
exit 0
