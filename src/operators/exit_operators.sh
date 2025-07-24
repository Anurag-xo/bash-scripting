#!/bin/bash

# Returns true if the command was successful withour any errors.

[[ $? -eq 0 ]]

# Returns true if the command was not successful or had errors.

[[ $? -gt 0 ]]


