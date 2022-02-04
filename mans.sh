#!/usr/bin/bash

# Jonah Watts
# 200206
# CMPT330

# First see if the command is valid
if $1 ; then
    echo "USAGE $0 (item) [items]"
fi


# Loop through every argument
for i in $@; do

    # Check every page
    echo -n $i
    for j in {1..9}; do

        # If there is a manual entry in this section, create a pdf
        if  man $j $i &> /dev/null ; then

            man -t $j $i | ps2pdf - "$i($j).pdf"
            echo -n  " "$j

        fi
    done
    echo
done
