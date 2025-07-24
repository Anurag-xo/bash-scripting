#!/bin/bash
#
echo "Argument one in $1"
echo "Argument two is $2"
echo "Argument three is $3"
echo "All arguments: $@"

# Another thig is that you need to keep in mind is that $0 is used to reference the script itself.
# This is an excellent way to create self destruct the file if you need to or just get the name of the script.

