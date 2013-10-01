#!/bin/bash

 ###########################################
#   Este programa sirve para sumar los     #
#  numeros pares hasta llegar al numero    #
#	            dado                       #
#    Autor : Esteban Trejo Gallego         #
############################################
suma=0
a=0
echo "Introduzca un número"; 
read numero

for a in `seq 0 2 $numero`
do
	
	let "suma= a + suma"
done

echo "La suma es $suma"
