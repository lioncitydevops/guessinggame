#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera/JHU The Unix Workbench

count=$(ls -p | grep -v / | wc -l)

function correct_guess {        # One function...
    if [[ $guess -lt $count ]]          # One if statement ...
    then
	echo "Too low!"
    elif [[ $guess -gt $count ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratualations! You guessed right, there are $count file(s) in $PWD "
    fi
}

while true
do
    read -p "Guess how many files are in the current directory? " guess
    echo $(correct_guess)
    echo ""
    if [[ $guess -ne $count ]]
    then
    	continue
	else
		break
	fi
done
