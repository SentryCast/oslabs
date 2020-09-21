#!/bin/bash

inputfile="/var/log/anaconda/X.log"

if [[ -f "/var/log/anaconda/X.log" && -r "/var/log/anaconda/X.log" ]]; then
	while IFS= read -r line
	do
		if [[ "$line" == *"(WW)"* && "$line" != *"(WW) warning, (EE) error, (NI) not implemented, (??) unknown."* ]]; then
			echo -e ${line//"(WW)"/"\e[1;33mWarning:\e[0m"}
		fi
	done < "$inputfile"

	while IFS= read -r line
	do
		if [[ "$line" == *"(II)"* && "$line" != *"(++) from command line, (!!) notice, (II) informational,"* ]]; then
			echo -e ${line//"(II)"/"\e[1;36mInformation:\e[0m"}
		fi
	done < "$inputfile"
else
	echo: Error occurred: permission denied or file does not exist.
	exit 2
fi	
