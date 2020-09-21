#!/bin/bash

if [[ "$1" != "calc" && "$1" != "search" && "$1" != "reverse" && "$1" != "strlen" && "$1" != "log" && "$1" != "exit" && "$1" != "help" && "$1" != "interactive" ]]; then
	echo Wrong argument. Type ./main.sh help to learn usage
	exit 3
else

case $1 in
calc)
	if [ $# == 4 ]; then
		./calc.sh $2 $3 $4
	else
		echo Error occurred: expected 4 arguments.
		exit 1
	fi
;;
search)
	if [ $# == 3 ]; then
		./searchgrep.sh $2 $3
	else
		echo Error occurred: expected 3 arguments.
		exit 1
	fi
;;
reverse)
	if [ $# == 3 ]; then
		./reverse.sh $2 $3
	else
		echo Error occurred: expected 3 arguments.
		exit 1
	fi
;;
strlen) if [ $# == 2 ]; then
		shift
		./strlen.sh "$@"
	else
		echo Error occurred: expected 2 arguments.
		exit 1
	fi
;;
log)
	if [ $# == 1 ]; then
		./log.sh
	else
		echo Error occurred: expected option log without arguments.
		exit 1
	fi
;;
exit)
	if [ $# == 2 ]; then
		./exit.sh $2
	else
		echo Error occurred: expected 2 arguments.
		exit 1
	fi
;;
help)
	if [ $# == 1 ]; then
		./help.sh
	else
		echo Error occurred: expected option help without arguments.
		exit 1
	fi
;;
interactive)
	if [ $# == 1 ]; then
		./interactive.sh
	else
		echo Error occurred: expected option interactive without arguments.
	fi
;;	
esac

fi
