#!/bin/bash

# Script for generating symbolic links to all subfolders
# in a given folder.

# Usage: link_folders.sh src_folder dest_folder
# Example: link_folders.sh ~/GDrive/from_Dropbox/git ~/src3


dir=$1
dest=$2

# softlink github files
files="${dir}/*"
for file in $files; do

    #echo current file $file
    if [ -d $file ]; then
       echo ln -s -f $file $dest 2> /dev/null
       ln -s -f $file $dest 2> /dev/null
    else
       echo Skipping $file - not a directory
    fi


done


