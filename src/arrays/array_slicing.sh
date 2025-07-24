#!/bin/bash

# While bash does not support true array slicing, you can achive similar results using a combination of array indexing and string slicing

array=("A" "B" "C" "D" "E")

echo "${array[@]}" #output: A B C D E

echo "${array[1]}" # output: B

echo "${array[@]: 1 : 3}" # output: B C D

echo "${array[@]:3}" # output : D E

# When working with arrays, always use [@] to refer to all elements, and enclose the parameter expansion in quotes to preserve spaces in array elements.


