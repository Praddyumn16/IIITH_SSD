#!/bin/bash

total=$(wc -l < $1)

rem=$(( $total % 2))

if [ $rem -eq 0 ]
then
    line=$(($a/2))
else
    line=$(($a/2+1))
fi

awk -v var=$line 'NR==var' $1 
