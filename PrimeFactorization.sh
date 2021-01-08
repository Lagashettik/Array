#!/bin/bash -x
declare -A prime
declare -A factor
read n
p=1;
for (( d=2; d<n; d++ ))
do
	a=0
	for (( c=2; c<d; c++ ))
	do
		t=$(($d%$c))
		if [ $t == "0" ];
		then
		((a++))
		fi
	done
		if [ $a == 0 ];
		then
		prime[$p]=$d
		((p++))
		fi

done
p=1
c=1
while [ ${prime[$p]} -lt $(($n+1)) ]
do
a=$(($n%${prime[$p]}))
if [ $a -eq 0 ];
then
factor[$c]=${prime[$p]}
((c++))
n=$(($n/${prime[$p]}))
fi
((p++))
done

echo ${factor[@]}
