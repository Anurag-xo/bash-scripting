#!/bin/bash

# continue tell ths script to stop the current iteration of the loop and then start the next iteration.

for i  in 1 2 3 4 5
do
	if [[ $i -eq 2 ]]
	then
		echo "Skipping number 2"
		continue
	fi
	echo "i is equal to $i"
done

