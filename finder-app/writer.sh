#!/bin/bash

writefile=$1
writestr=$2

#check number of arguments
if [ "$#" -ne 2 ]; then
	echo "Please make sure to enter 2 arguments : directory and string"
	exit 1
fi

#extract directory name
dir=$(dirname "$writefile")

#create directory if it does not exist
mkdir -p "$dir"

#create file
touch "$writefile"

#check if file was sucessfully created
if ! [ -e "$writefile" ]; then
	echo "Error : Unable to create the file."
	exit 1
fi

#write string to file
echo "$writestr" > "$writefile"
