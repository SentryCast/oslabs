#!/bin/bash
# ./main reverse data output



if [[ -f $2 && -r $2 ]]; then
	if [ "$2" != "$3" ]; then
		rev $2 | tac > $3
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
