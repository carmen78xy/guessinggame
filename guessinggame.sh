#!/usr/bin/env bash
# File: guessinggame.sh

numfiles=$(ls | wc -l)
guess=0

echo "How many files are there in the directory?"
read response
let guess=$response

while [[ $guess -ne $numfiles ]]
do
	if [[ $guess -lt $numfiles ]]
	then
		echo "Too small. Guess again!"
	elif [[ $guess -gt $numfiles ]]
	then
		echo "Too large. Guess again!"
	fi
	read response
	let guess=$response
done

echo "Congratulations! You've guessed the number of files correctly."

