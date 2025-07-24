#!/bin/bash

echo "What is your name?"
read name

echo "Hi there $name"
echo "Welcome to lalaland"

# to reduce the code, we could change the first echo statement with the "read -p" the read command used with -p flag will print a message before prompting the user for their input.
#
read -p "What is your name? " name

echo "Hi there $name"
echo "Welcome to lalaland"

