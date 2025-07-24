#!/bin/bash

# True if a shell variable varname is set( has been assigned a value)

[[ -v ${varnamr} ]]

# True if the length of the string is zero.

[[ -z ${string} ]]

# True if the length of the string is non-zero.

[[ -n ${string} ]]

# True if the strings are equal. = should be used with the test command for POSIX conformance. When used with the [[ commnad. this performs pattern matching as described above (Compound Commands).

[[ ${string} == ${string2} ]]

# True if the strings are not equal.

[[ ${string1} != ${string2} ]]

# True if the string1 sorts before string2 lexixographically.

[[ ${string1} < ${string2} ]]

# True if string1 sorts after string2 lexicographically.

[[ ${string1} > ${string2} ]]

