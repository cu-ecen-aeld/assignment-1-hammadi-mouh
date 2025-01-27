#!/bin/bash

#reading positinal arguments
filesdir=$1
searchstr=$2

#check number of arguments
if [ "$#" -ne 2 ]; then
	echo "Please make sure to enter 2 arguments : directory and string"
	exit 1
fi

#check if filesdir exists
if ! [ -d "$filesdir" ]; then
  echo "Directory does not exists."
  exit 1
else
  X=$(ls -1 "$filesdir" | wc -l) #count the number of files in specified directory
  Y=$(grep -r "$searchstr" "$filesdir" | wc -l) #search in files containing strings and count them
  echo "The number of files are $X and the number of matching lines are $Y" 
fi

