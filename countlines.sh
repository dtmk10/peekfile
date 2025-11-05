#!/bin/bash

file=$1
lines=$(cat $file | wc -l)

ls $file

if [[ $lines -eq 0 ]];
 then
    echo there are $lines lines, $file is empty
elif [[ $lines -eq 1 ]];
 then
    echo there is $lines line
    echo =====
    head $file
else
    echo there is more than one line, there are $lines
    echo =====
    head $file
fi