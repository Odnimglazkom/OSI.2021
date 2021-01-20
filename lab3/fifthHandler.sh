#!/bin/bash
operation="+"
answer=1
(tail -f mypipe) |
while true
do
	read LINE
	if [[ $LINE == "QUIT" ]]
	then
		echo "Quit"
		killall tail
		exit 0
	elif [[ $LINE == "ERROR" ]] 
	then
		echo "Is not *,+, number"
		exit 1
	fi
	case $LINE in
		QUIT)
			echo "exit"
                	killall tail
                	exit
			;;
		ERROR)
			echo "Is not *,+, number"
                	exit 1
			;;
		"+")
            		operation="+"
        		;;
        	"*")
            		operation="*"
        		;;
		[0-9]*)
            		case $operation in
                		"+")
                    			let "answer+=$LINE"
                			;;
                		"*")
                    			let "answer*=$LINE"
                			;;
            		esac
            		echo $answer
        		;;
        	*)
            		kill $$
            		exit 1
        ;;
    esac
done
