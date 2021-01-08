#!/bin/bash -x
for (( a=1; a<100; a++ ))
do
if [ $(($a%10)) -eq $(($a/10)) ];
then
echo $a" "
fi
done
