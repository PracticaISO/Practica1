#!/bin/bash


for a in `seq 1 100`
do
	var=$RANDOM
	var=$[ $var % 100 ]
	
	if [ $var -ge 1 ] && [ $var -lt 20 ]
	then
		let "c0=c0 + 1"		
	fi
	if [ $var -ge 20 ] && [ $var -lt 40 ]
	then
		let "c1=c1 + 1"		
	fi
	if [ $var -ge 40 ] && [ $var -lt 60 ]
	then
		let "c2=c2 + 1"		
	fi
		if [ $var -ge 60 ] && [ $var -lt 80 ]
	then
		let "c3=c3 + 1"		
	fi
	if [ $var -ge 80 ] && [ $var -lt 100 ]
	then
		let "c4=c4 + 1"		
	fi
done

echo "[ 0-19]: " ${c0}
echo  "[20-39]: " ${c1}
echo  "[40-59]: " ${c2}
echo  "[60-79]: " ${c3}
echo  "[80-99]: " ${c4}
