#!/bin/bash

# Prints three head and three tail of input file


length=${2:-3}
echo $length

head -n$length $1
echo ...
tail -n$length $1
