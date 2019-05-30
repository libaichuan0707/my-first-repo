#!/bin/bash

num=$(ls -l|grep "^-"| wc -l)

function CheckNum(){
	echo "input num:"
	read response
	while [[ response -ne $num ]]
	do
		if [[ response -gt $num ]]
		then
			echo "too high, try again"
		else
			echo "too low, try again"
		fi
		read response
	done

	echo "end"
}

CheckNum