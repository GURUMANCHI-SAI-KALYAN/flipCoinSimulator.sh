#!/bin/bash -x
for (( i=0; i<=100; i++))
do
	simulator=$((RANDOM%2))
	if [ $simulator -eq 1 ]
	then
		heads=$((heads+1))
	else
		tails=$((tails+1))
	fi
done
echo "HEADS WON" $heads "TIMES"
echo "TAILS WON" $tails "TIMES"
