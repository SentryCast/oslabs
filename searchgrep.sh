#!/bin/bash

if [ -d $1 ]; then
	grep -Rs "$2" "$1"
else
	echo Error occurred: can not read directory.
	exit 1
fi
