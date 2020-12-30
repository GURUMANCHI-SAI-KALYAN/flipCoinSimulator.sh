#!/bin/bash -x
heads=0
tails=0
maxflips=21
while (( $heads<$maxflips && $tails<$maxflips ))
do
	simulator=$((RANDOM%2))
	if (( $simulator == 1 ))
	then
		heads=$((heads+1))
	else (( $simulator == 0 ))
		tails=$((tails+1))
	fi
done

if (( $heads == $tails ))
then
diff1=0
diff2=0
while (( $diff1<2 && $diff2<2 ))
do
        simulator=$((RANDOM%2))
        if (( $simulator == 1 ))
        then
                heads=$((heads+1))
		diff=$(($heads-$tails))
        else (( $simulator == 0 ))
                tails=$((tails+1))
		diff2=$(( $tails-$heads ))
        fi
done
fi

	if (( $heads > $tails ))
	then
	diff=$(($heads-$tails))
	echo "HEADS HAS WON BY" $diff
	else (( $tails > $heads ))
	diff=$(($tails-$heads))
	echo "TAILS HAS WON BY" $diff
fi

