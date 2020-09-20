#!/bin/bash

if [ -e $1 ]; then
	grep -R "$2" "$1"
else
	echo Error occurred: can not read directory.
	exit 1
fi
