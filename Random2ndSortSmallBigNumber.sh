#!/bin/bash -x
c=0
while [ $c -lt 10 ]
do
no[((c++))]=$((RANDOM%1000))
done

for (( c=0; c<10; c++ ))
do
	for (( d=0; d<10; d++ ))
	do
		if [ ${no[$c]} -lt ${no[$d]} ];
		then
		a=${no[$c]}
		no[$c]=${no[$d]}
		no[$d]=$a
		fi

	done

done

echo "2nd smallest "${no[2]}
echo "2nd Largest "${no[8]}
