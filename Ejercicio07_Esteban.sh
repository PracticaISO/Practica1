#!/bin/bash


read -p "Introduce un número: " numero 
a=$numero
factor=1
echo -n "$numero!"
until [ $numero -eq 1 ]
do
	let "factor=factor * numero"
	let "numero=numero - 1"
done
echo ":" $factor 
