#!/bin/bash

 ###########################################
#Este programa sirve para dar la vuelta a  #
#		un número                          #
#    Autor : Esteban Trejo Gallego         #
############################################
#Pedimos un número para darle la vuelta#
echo "Introduzca un número de dos cifras y le daré la vuelta:"
#lee el numero#
read a
#Lo implemento por si el número introducido fuese menor que 10#
if [ "$a" -lt 10 ]
then 
	echo $a
fi
if [ "$a" -ge 10 ]
then 

####################################################################################
#Para darle la vuelta al número lo dividiremos entre 10, le restaremos el cociente #
#multiplicado por diez al número elegido, y finalmente multiplicaremos el resultado#
#por diez y le sumaremos el cociente de la primera división y luego lo imprimimos. #
####################################################################################  
	let "b=$a/10 "
	let "d=$a - $b*10  "
	let "d=$d*10 + $b "
	echo $d
fi
