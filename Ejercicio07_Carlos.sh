#!/bin/bash

# ejercicio07
# Escribe un script que calcule el factorial de un número dado. 
# Ejemplo: Introduce un número: 7
# 7! = 5040

echo "Introduce el número para calcular su factorial:"
read numero
a=1
factorial=1                              
until [ "$a" -gt "$numero" ]
do
    let "factorial=factorial*a"
    let "a+=1"
done

echo "!$numero=$factorial"
