#!/bin/bash

# Test if the user provided less than one argument
if [ $# -lt 1 ]
then
    # If so, then print the usage for this script to stderr and
    # exit with return code 1
    echo "Usage: `basename $0` ARGUMENT" >&2
    exit 1
fi

# Just print the argument and exit
echo "The argument was: $1"
