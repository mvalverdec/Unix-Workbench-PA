#!/usr/bin/env bash
# Guessing game, Coursera Peer Assignment
# The Unix Workbench
# Marco V Valverde C

clear

howManyFiles=$(ls -1 | wc -l)
howMany=0

function question {
    echo "==============================================="
    echo "How many files are in the current directory?   " 
    read  howMany
}


function isItCorrect {
    
    while [[ $howManyFiles -ne $howMany ]]
    do
        question
	if [[ $howMany -lt $howManyFiles ]]; then
            echo "Your answer was low. Try again..."
	    elif [[ $howMany -gt $howManyFiles ]]; then
	        echo "Your answer was high. Try again..."
	    elif [[ $howMany -eq $howManyFiles ]]; then
		echo "You won. Congratulations!"
	    else
		echo "Your answer is wrong. Try again..."
	    fi
    done
}

isItCorrect

echo "==============================================="
