#!/bin/bash -x

read -p "Enter The Number of Times coin to be Flipped " num
head=1
tail=0
headcount=0
tailcount=0
while [ $headcount -lt 21 -a $tailcount -lt 21 ] 
do
	
	randomcheck=$((RANDOM%2))
	case $randomcheck in
	
	$head)    
		((headcount++))
		;;
	$tail)
		((tailcount++))
		;;

esac
done
if [ $headcount -ge 21 ]
then
	echo "head wins"
	diff=$(($headcount-$tailcount)) 
elif [ $tailcount -ge 21 ]
then
	echo "tail wins "
	diff=$(($tailcount-$headcount))
else
	echo "no one wins "
fi

echo "difference is "$diff
echo "head count is " $headcount

echo "tail count is "$tailcount