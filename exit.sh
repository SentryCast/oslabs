#!/bin/bash

grep_ispositive_number() {
grep -E -q "^[0-9]+$"
}

if (echo $1 | grep_ispositive_number && [ $1 -le 255 ]); then
	exit $1
else
	echo Error occurred: wrong argument. Expected a positive number less than 256
	exit 0
fi
