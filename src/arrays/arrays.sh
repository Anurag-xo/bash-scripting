#!/bin/bash
#
my_array=("value 1" "value 2" "value 3" "value 4")

# To acces a single element in index 1
echo ${my_array[1]}

# to return the last element
echo ${my_array[-1]}

# Using @ will return all the elements in the array.
echo ${my_array[@]}

# prepending the array with a hash sign(#) would output the total number of elements in the array, in our case it is 4.
echo ${#my_array[@]}

