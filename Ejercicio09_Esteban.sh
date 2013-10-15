#! /bin/bash
echo -n "Introduzca un número: "
read a
echo -n "Introduzca un número: "
read b

while [ $a -ne $b ]
do

	if [ $a -gt $b ]
	then
		let "a=$a-$b"
		
	else
		let "b=$b-$a"
	fi
	c=$a
	
done

echo $c
