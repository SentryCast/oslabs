#!/bin/bash


	if [[ -f $2 && -r $2 ]]; then
		if [ "$1" != "$2" ]; then
			rev $1 | tac > $2
		else
			
			rev $1 | tac > TMP
			mv TMP "$2"
		fi
	else
		echo Error occured: datafile can not be opened or does not exist.
		echo Usage: ./main reverse datafile outputfile
		exit 1
	fi
