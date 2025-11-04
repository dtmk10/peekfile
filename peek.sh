#!/bin/bash

# Prints three head and three tail of input file


length=${2:-3}
if [[ $(cat $1 | wc -l) -ge $((2*$length)) ]]
then
    head -n$length $1
    echo ...
    tail -n$length $1
else
    echo WARNING: too many lines requested
    head -n$length $1
    echo ...
    tail -n$length $1
fi