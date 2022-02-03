#!/usr/bin/bash

echo "enter your favorite number"
read firstnumber
echo "enter your second favorite number"
read secondnumber

if [ $firstnumber -eq 0 ] && [ $secondnumber -eq 0 ]; then 
    echo "num1 and num2 are zero"

elif [ $firstnumber -eq $secondnumber ]; then
    echo "they are the same number"

elif [ $firstnumber -gt $secondnumber ]; then
    echo "first number is greater"

else
    echo "second is greater than first"

fi


echo "second test"

if [ -z "$1" ]; then
    echo usage: $0 directory
    exit
fi

TEMP = $1
echo "you entered $0 and $1"
ls -l

man man
