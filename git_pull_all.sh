#!/bin/bash

# Script for pulling all repos in src folder
# Usage: git_pull_all.sh
# Algorithm: Looks at contents of src folder. Assumes that any
#            symbolic links there are links to github repos
#            stored elsewhere. Does git pull on all of them.

dir=$PATH_SRC

files="${dir}/*"
for file in $files; do

    #echo current file $file
    if [ -h $file ]; then
       echo cd $file 
       echo git pull
       cd $file 
       git pull
       git pull --recurse-submodules
    else
       echo Skipping $file - not a symbolic link
    fi


done


