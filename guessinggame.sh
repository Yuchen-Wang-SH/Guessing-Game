#!/usr/bin/env bash
echo "How many files are in this directory?"
numfiles=$(find . -maxdepth 1 -type f | wc -l)

function guess {
    while true
    do
        read answer
        if ! [[ $answer =~ ^-?[0-9]+$ ]]
        then
            echo "Your answer is not a valid integer. Please try again."
        elif [[ $answer -gt $numfiles ]]
        then
            echo "Your answer is too big! Please try again."
        elif [[ $answer -lt $numfiles ]]
        then
            echo "Your answer is too small! Please try again."
        else
            echo "You have the right answer! Congratulations!"
            break
        fi
    done
}

guess
