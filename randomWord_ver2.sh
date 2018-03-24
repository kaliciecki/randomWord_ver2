#!/bin/bash

#Create a script which will print a random word.
#There is a file containing a list of words on your system (usually /usr/share/dict/words or /usr/dict/words).

#Expand the previous activity so that if a number is supplied as the first command line argument then it will select from only words with that many characters.


#File path:
file=/usr/share/dict/words

#Loop in a variable for getting amount of dots in grep "^........$" file command.

k=$( for (( i=1; i<=$1; i++ ))
	do
	echo -n '.'
done )


#Command to pickup random word with certain amount of letters

if [ ! -z "$2" ]
	then
		getRandomWord=$( grep "^"$k"$" $2 | shuf -n 1 )
else
		getRandomWord=$( grep "^"$k"$" $file | shuf -n 1 )
fi
			

echo $getRandomWord 
