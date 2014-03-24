#!/bin/bash

# git repo path
dir=~/src/bin
dest=~/bin

# if directory or file exists, we will get some messages and the link will not trample anything
# maybe someday this can graduate to some if statements
mkdir $dest 2> /dev/null


# softlink bin files
files="${dir}/*"
for file in $files; do

    #echo current file $file
    if [ -x $file ]; then
       echo ln -s -f $file $dest 2> /dev/null
       ln -s -f $file $dest 2> /dev/null
    else
       echo Skipping file $file - not executable
    fi


done


