#!/usr/bin/env bash
echo "How many files are in this directory?"
numfiles=$(ls | wc -l)

function guess {
    while true
    do
        read answer
        if [[ $answer -gt $numfiles ]]
        then
            echo "Your answer is too big!"
        elif [[ $answer -lt $numfiles ]]
        then
            echo "Your answer is too small!"
        else
            echo "You have the right answer! Congratulations!"
            break
        fi
    done
}

guess
