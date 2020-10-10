#!/bin/bash -x

for((i=0;i<2;i++))
do
	randomCheck=$((RANDOM%2))

done
if [ $randomCheck -eq 0 ]
then
	echo "Flipped Coin is Head"
else
	echo "Flipped Coin is Tail"
fi