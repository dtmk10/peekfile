#!/bin/bash

# Prints three head and three tail of input file

head -n$2 $1
echo ...
tail -n$2 $1
