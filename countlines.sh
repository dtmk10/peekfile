#!/bin/bash

file=$@

echo $file

for i in $file; 
do
    ls $i
    lines=$(cat $i | wc -l)

    if [[ $lines -eq 0 ]];
    then
        echo there are $lines lines, $i is empty
    elif [[ $lines -eq 1 ]];
    then
        echo there is $lines line
        echo =====
        head $i
    else
        echo there is more than one line, there are $lines
        echo =====
        head $i
    fi
    echo ______________
done