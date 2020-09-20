#!/bin/bash

echo MENU: s - sum, f - search, r - reverse, l - strlen, o - log, e - exit, h - help
echo Enter an option:
read option

if [[ "$option" == "s" || "$option" == "sum" ]]; then
	echo Enter sum/div/mul/sub
	read sarg1
	echo Enter two numbers
	read sarg2 sarg3
	./calc.sh $sarg1 $sarg2 $sarg3
elif [[ "$option" == "f" || "$option" == "search" ]]; then
	echo Enter directory
	read farg1
	echo Enter regex
	read farg2
	./searchgrep.sh $farg1 $farg2
elif [[ "$option" == "r" || "$option" == "reverse" ]]; then
	echo Enter input file
	read rarg1
	echo Enter ouput file
	read rarg2
	./reverse.sh $rarg1 $rarg2
elif [[ "$option" == "l" || "$option" == "strlen" ]]; then
	echo Enter a string
	read larg1
	./strlen.sh $larg1
elif [[ "$option" == "o" || "$option" == "log" ]]; then
	./log.sh
elif [[ "$option" == "e" || "$option" == "exit" ]]; then
	echo Enter an exit code which is positive number under 256
	read earg1
	./exit.sh $earg1
elif [[ "$option" == "h" || "$option" == "help" ]]; then
	./help.sh
else
	echo Wrong option. Start again.
	./interactive.sh
fi
