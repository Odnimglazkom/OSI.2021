#!/bin/bash
echo $$ > .pid
answer=1
term() {
	echo "The end"
	exit
}
usr1() {
	operation="+"
}
usr2() {
	operation="*"
}
trap 'usr1' USR1
trap 'usr2' USR2
trap 'term' SIGTERM
while true
do
	case $operation in
		"+")
			let "answer+=2"
			echo $answer
			;;
		"*")
			let "answer*=2"
			echo $answer
			;;
	esac
	sleep 1
done
