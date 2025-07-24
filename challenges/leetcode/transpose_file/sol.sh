#!/bin/bash

awk '
{
	# store number of rows
	if (NR == 1 ) {
		cols = NF
	}

	# Store each elelment in a 2D array
	for(i = 1; i <= NF; i++) {
		matrix[i, NR] = $i
	}
	rows = NR
}
END {
# Print transposed matrix
	for(i = 1; i <= cols; i++) {
		for(j = 1; j <= rows; j++) {
			printf "%s", matrix[i, j]
			if (j < rows) {
				printf " "
			}
		}
		printf "\n"
	}
}' file.txt
