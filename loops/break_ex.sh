#!/bin/bash

for (( a = 1; a < 10; a++ ))
do
	echo "outer loop: $a"
	for (( b = 1; b < 100; b++ ))
	do
		if [[ $b -gt 5 ]]
		then
			break 2
		fi
		echo "Innter loop: $b"
	done
done


# The bash script will begin with a=1 & will move to inner loop and when it reaches b=5, it will break the outer loop. We can use break only instead of break 2, to break inner loop & see how it affects the output.
#
