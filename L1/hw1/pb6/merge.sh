#!/bin/bash

# Test if the user provided less than one argument
rm sth2
if [ $# -lt 3 ]
then
    # If so, then print the usage for this script to stderr and
    # exit with return code 1
    echo "Usage: You have to give at least three arguments"
    exit 1
fi

# Just print the argument and exit
echo "The argument was: $1"

if [ -e "$1" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "Error : file already exists"
  exit 1
fi

if [ ! -e "$2" ]; then
  # Control will enter here if $DIRECTORY exists.
  'something is wrong' > errors.txt
  exit 1
fi

if [ ! -e "$3" ]; then
  # Control will enter here if $DIRECTORY exists.
  'something is wrong' > errors.txt
  exit 1
fi


cat $2 > $1
cat $3 >> $1

sort -u $1 > temp
cat temp > $1
rm temp1

first=`head -1 $1`
last=`tail -1 $1`
echo "First line in \"$2\" is $first"
echo "Last line in \"$3\" is $last"
