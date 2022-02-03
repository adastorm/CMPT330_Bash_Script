#!/usr/bin/bash

# Loop through every argument
for i in $@; do

    # Check every page
    echo the command line argument was $i
    for j in {1..9}; do
        man $i $j > "$i($j).txt"
    done
done

