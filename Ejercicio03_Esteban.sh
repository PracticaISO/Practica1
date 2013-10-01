#!/bin/bash

 ###########################################
#   Este programa sirve para imprimir en   #
#   pantalla las tablas del 1 al 10        #
#    Autor : Esteban Trejo Gallego         #
############################################

function tabla_multi()
{
	echo "Tabla del "$1
	let "p= $1 *0 "	
	echo  $1" x  0: "$p
	let "p= $1 *1 "	
	echo  $1" x  1: "$p
	let "p= $1 *2 "	
	echo  $1" x  2: "$p
	let "p= $1 *3 "	
	echo  $1" x  3: "$p
	let "p= $1 *4 "	
	echo  $1" x  4: "$p
	let "p= $1 *5 "	
	echo  $1" x  5: "$p
	let "p= $1 *6 "	
	echo  $1" x  6: "$p
	let "p= $1 *7 "	
	echo  $1" x  7: "$p
	let "p= $1 *8 "	
	echo  $1" x  8: "$p
	let "p= $1 *9 "	
	echo  $1" x  9: "$p
	let "p= $1 *10 "	
	echo  $1" x 10: "$p

}

tabla_multi 0
read
tabla_multi 1
read
tabla_multi 2
read
tabla_multi 3
read
tabla_multi 4
read
tabla_multi 5
read
tabla_multi 6
read
tabla_multi 7
read
tabla_multi 8
read
tabla_multi 9
read 
tabla_multi 10
