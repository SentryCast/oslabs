#!/bin/bash

if [[ -e $2 ]]; then
	echo All files are found
else
	touch "$2"

	if [[ -f $2 && -r $2 ]]; then
		if [ "$1" != "$2" ]; then
			rev $1 | tac > $2
		else
			 echo Error occurred: datafile and outputfile should be different files.
			 echo Usage: ./main reverse datafile outputfile
			 exit 1
		fi
	else
		echo Error occured: datafile can not be opened or does not exist.
		echo Usage: ./main reverse datafile outputfile
		exit 1
	fi
fi
