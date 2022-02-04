#!/usr/bin/bash

#Jonah Watts
#CMPT330
#200206

# Loop through every argument
for i in $@; do

    # Check every page
    echo -n $i
    for j in {1..9}; do
        if  man $j $i &> /dev/null ; then
            man -t $j $i | ps2pdf - "$i($j).pdf"
            echo -n  " "$j
        fi
    done
    echo
done
