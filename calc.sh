#!/bin/bash

grep_is_number() {
grep -E -q "^[\-\+]?[0-9]+$"
}

grep_isnotnull_number() {
grep -E -q "^-?[1-9][0-9]*$"
}

if [ "$1" = "sum" ]
	then
	if(echo "$2" | grep_is_number)
		then
		if(echo "$3" | grep_is_number)
			then
			let a=$2+$3
			echo $a
		else
		echo Error occurred: incorrect 3rd argument. Expected a number.
		exit 1
		fi
	else
	echo Error occurred: incorrect 2nd argument. Expected a number.
	exit 1
	fi
elif [ "$1" = "sub" ]
	then
	if(echo "$2" | grep_is_number)
		then
		if(echo "$3" | grep_is_number)
			then
			let a=$2-$3
			echo $a
		else
		echo Error occurred: incorrect 3rd argument. Expected a number.
		exit 1
		fi
	else
	echo Error occurred: incorrect 2nd argument. Expected a number.
	exit 1
	fi
elif [ "$1" = "mul" ]
	then
	if(echo "$2" | grep_is_number)
		then
		if(echo "$3" | grep_is_number)
			then
			let a=$2*$3
			echo $a
		else
		echo Error occurred: incorrect 3rd argument. Expected a number.
		exit 1
		fi
	else
	echo Error occurred: incorrect 2nd argument. Expected a number.
	exit 1
	fi
elif [ "$1" = "div" ]
	then
	if(echo "$2" | grep_is_number)
		then
		if ( echo "$3" | grep_isnotnull_number )
			then
			let a=$2/$3
			echo $a
		else
		echo Error occurred: incorrect 3rd argument. Expected a number which is not zero.
		exit 1
		fi
	else
	echo Error occurred: incorrect 2nd argument. Expected a number.
	exit 1
	fi
else
	echo Error occurred: Wrong argument. Expected sum/sub/div/mul.
	exit 1
fi





