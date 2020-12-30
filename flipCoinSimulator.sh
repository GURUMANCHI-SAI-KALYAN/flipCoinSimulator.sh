#!/bin/bash -x
Heads=1
Tails=0
simulator=$((RANDOM%2))
if [ $simulator -eq $Heads ]
then
	echo "winner"
else
	echo "looser"
fi
