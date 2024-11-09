#!/bin/bash

read -p "What is yout name? " name

if [[ -z ${name} ]]
then
	echo "Please enter your name!"
fi

