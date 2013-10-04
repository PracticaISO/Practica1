#!/bin/bash

 ###########################################
#   Este programa sirve para imprimir      #
#     en pantalla un calendario            #  
#    Autor : Esteban Trejo Gallego         #
############################################
c=1
echo -n "Pedidos el numero de dias: "
read a
echo -n "¿En qué dia empieza?(0 es lunes y 6 es domingo): "
read b
echo "  L  M  X  J  V  S  D"
if [ $b -eq 1 ]
then 
	echo -n "   "
fi
if [ $b -eq 2 ]
then 
	echo -n "      "
fi
if [ $b -eq 3 ]
then 
	echo -n "         "
fi
if [ $b -eq 4 ]
then 
	echo -n "            "
fi
if [ $b -eq 5 ]
then 
	echo -n "               "
fi
if [ $b -eq 6 ]
then 
	echo -n "                  "
fi
for d in `seq $c $a`
do 
	for b in `seq $b 6`
	do
		if [[ $c -lt 10 ]]
		then 
			echo -n " "
		fi
		echo -n " $c"
		if [[ "$c" -eq "$a" ]]
		then 
			exit 0
		fi
		if [[ $b -eq 6 ]]
		then
			let "b=0"
			echo
		fi
		let "c=c+1"
	done 
	
done 
