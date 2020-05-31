#!/usr/bin/env bash
# File: guessinggame.sh
function guessinggame {
	echo "Welcomme!, guess the number of files in the current directory:"
	read response
}
guessinggame
num_files=$(ls -l -a . | egrep -c '^-')

 
if [[ $response =~ $num_files ]]
then
	echo "Correct, congratulations!"
fi
while [[ $response != $num_files ]]
do
	if [[ $response -gt $num_files ]]
	then
		echo "You're high, try again:"
		read response
		if  [[ $response =~ $num_files ]]
		then
			echo "correct, congratulations!"
		fi
	elif [[ $response -lt $num_files ]]
	then
		echo "You're low, try again:"
		read response
		if [[ $response =~ $num_fies ]]
		then
			echo "correct, congratulations!"
		fi
	fi
done
