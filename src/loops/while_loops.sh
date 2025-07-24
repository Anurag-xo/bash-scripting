#!/bin/bash

counter=1
while [[ $counter -le 10 ]]
do
	echo $counter
	((counter ++))
done


# script that asks the user for thier name and not allow an empty input:

read -p "What is your name? " name

while [[ -z ${name} ]]
do
	echo "Your name can not be blank. Please enter a valid name!"
	read -p "Enter you name again? " name
done

echo "Welcome ${name}"

