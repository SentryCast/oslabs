#!/bin/bash

	if [[ -f $1 && -r $1 ]]; then

	if [[ -f $2 && -r $2 && -w $2 ]]; then
		if [ "$1" != "$2" ]; then
			rev $1 | tac > $2
		else
			
			rev $1 | tac > TMP
			mv TMP "$2"
		fi
	else
		if [[ $2 != *"/"* ]]; then
		
		if(touch $2); then
			if [[ -w $2 && -r $2 && -f $2 ]]; then
				rev $1 | tac > $2
			else
				echo Error occurred: outputfile has no permission to write or read or can not be created.
				exit 1
			fi
		else
		
			echo Error occured: datafile or outputfile can not be opened or does not exist.
			echo Usage: ./main reverse datafile outputfile
			exit 1
		fi

		else
		if ! touch "$2" 2>/dev/null
		then
			echo Error: no permission to create the file
			exit 2
		else
			touch "$2"
			rev $1 | tac >$2
		fi
		exit 1
		fi
	fi
	else
	echo Error occurred: cant open datafile
	exit 1
	fi

