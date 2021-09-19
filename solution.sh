#!/bin/bash

# assign the path to the hier.txt file to a variable
HIERFILE="$(pwd)/hier.txt"
exitCode=0
# create the starter directory if does not exist then change directory into it
mkdir -p starter
cd starter

# read the output of the hier.txt file into the while loop
# we read the individual line, and take into account the last line which may not have a newline
while IFS= read -r line || [ -n "$line" ] 
do
	# create an array by spliting the line in two by space
	arrayLine=(${line// / })
	# assign the command part of the line to cmd and the filepath part to filepath
	cmd=$( echo "${arrayLine[0]}")
	filepath=$(echo "${arrayLine[1]}")
	
	# check the type of command and run the appropriate bash command
	if [ "$cmd" = "create-directory" ];	then
		mkdir -p "$filepath"
	elif [ "$cmd" = "create-file" ]; then
		touch "$filepath")
	elif [ "$cmd" = "delete-directory" ]; then
		rm -Rf "$filepath"
	elif [ "$cmd" = "delete-file" ]; then
		rm "$filepath"
	else # handle the case where the command in the line is not a recognized command
		echo "$cmd is not a valid command"
    ((exitCode+=1))
	fi

done < "$HIERFILE" # redirects output of the hier.txt file into the loop for use by read
exit $exitCode
