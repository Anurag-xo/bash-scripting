#!/bin/bash

# syantax:
# ${string:start:length}
#
# where,
# start: is the index(0-based)
# length: is the maximum number of characters to extract
#

text="ABCED"

echo "${text:0:2}" # from index 0, maximum 2 characters
echo "${text:3}" # from index 3 to the end
echo "${text:1:3}" # Extract 3 characters starting from index 1
echo "${text:3:3}" # If length exceeds remaining characters, it stops at the end...:

