#!/bin/bash

read -p "What is your name? " name

if [[ -z ${name} ]]
then
	echo "Please enter your name!"
else
	echo "Hi there ${name}"
fi

# Check if the username provided is admin or not.

admin="anurag-xo"

read -p "Enter your username? " username

if [[ "${username}" == "${admin}" ]]; then
	echo "You are the admin user!"
else
	echo "You are NOT the admin user!"
fi

# To check weather your current USER ID and would not allow you to run the script as the root user:

if (( $EUID == 0 )); then
	ehco "Please do not run as root"
	exit
fi
# if you put this on top of your script it would exit in case that the EUID is 0 and would not execure the rest of the script.

# IN this example we want to make sure that the user is neither the admin user not the root user to ensure the script is neither the admin user nor the root user to ensure the script is incapable of causing too much damage.


admin="anurag-xo"

read -p " Enter you username? " username

if [[ "${username}" != "${admin}" ]] && [[ $EUID != 0 ]] ;
then
	echo "You are not the admin or root user, but please be safe!"
else
	echo "You are the admin user! This could be very dangerous!"
fi

# if you have multiple conditions and scenarios, then can use elif statement with if and else statements.

#!/bin/bash

read -p "Enter a number: " num

if [[ $num -gt 0 ]] ; then 
	echo "The number is positive"
elif [[ $num -lt 0 ]] ; then
	echo "The number is negative"
else
	echo "The number is 0"
fi

