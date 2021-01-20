#!/bin/bash
while true
do
	read LINE
	if [[ $LINE == "QUIT" ]]
	then
		echo $LINE > mypipe
		echo "Quit is done!"
		kill $$
	fi
	if [[ $LINE != "+" && $LINE != "*" && ! $LINE =~ [0-9]+ ]]
	then
		echo "ERROR" > mypipe
		echo "Is not +,*, or numer, Error!"
		kill $$
	fi
	echo $LINE > mypipe
done
