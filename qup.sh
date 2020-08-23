#!/bin/bash

# Dung de commit nhanh len github

while getopts "m:" opt
do
   case "$opt" in
      m ) 
            commit="$OPTARG"
             echo "Noi dung commit: '$commit'"
            ;;
      ? ) 

   esac
done

git add .

git commit -m $commit

git push origin master
