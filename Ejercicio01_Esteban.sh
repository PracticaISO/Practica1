#!/bin/bash

 ###########################################
#Este programa sirve para comparar numeros #
#    Autor : Esteban Trejo Gallego         #
############################################

#Pedimos cuatro números#
echo "Indica 4 numeros y te diré el mayor y el menor"
#Leemos el primero#
read a  
#Leemos el primero#
read b
#Leemos el primero#
read c
#Leemos el primero#
read d

#Comprobamos si el primer número es el mayor#
if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ] && [ "$a" -gt "$d" ]
then 
	echo "El mayor es: "$a
	
fi 
#Comprobamos si el segundo número es el mayor#
if [ "$b" -gt "$a" ] && [ "$b" -gt "$c" ] && [ "$b" -gt "$d" ]
then 
	echo "El mayor es: "$b
	
fi 
#Comprobamos si el tercer número es el mayor#
if [ "$c" -gt "$b" ] && [ "$c" -gt "$a" ] && [ "$c" -gt "$d" ]
then 
	echo "El mayor es: "$c
	
fi 
#Comprobamos si el cuarto número es el mayor#
if [ "$d" -gt "$b" ] && [ "$d" -gt "$c" ] && [ "$d" -gt "$a" ]
then 
	echo "El mayor es: "$d
	
fi
#Comprobamos si el primer número es el menor#
if [ "$a" -lt "$b" ] && [ "$a" -lt "$c" ] && [ "$a" -lt "$d" ]
then 
	echo "El menor es: "$a
	
fi 
#Comprobamos si el segundo número es el menor#
if [ "$b" -lt "$a" ] && [ "$b" -lt "$c" ] && [ "$b" -lt "$d" ]
then 
	echo "El menor es: "$b
	
fi 
#Comprobamos si el tercer número es el menor#
if [ "$c" -lt "$a" ] && [ "$c" -lt "$b" ] && [ "$c" -lt "$d" ]
then 
	echo "El menor es: "$c

fi 
#Comprobamos si el cuarto número es el menor#
if [ "$d" -lt "$a" ] && [ "$d" -lt "$c" ] && [ "$d" -lt "$b" ]
then 
	echo "El menor es: "$d
	
fi 

echo "Wellintong paga la coca"
