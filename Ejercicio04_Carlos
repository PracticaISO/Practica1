#!/bin/bash

# ejercicio04
# Escribe un script que solicite un número positivo, acto seguido debe 
# calcular la suma de todos los números pares comprendidos 
# entre 0 y el numero solicitado. 
# Ejemplo: Introduzca un número: 341 La suma es: 29070

echo "Introduzca un número positivo:"
read numero

suma=0
a=0

while [[ "numero" -lt 1 ]]
do                          
    echo "Número incorrecto. Introduzca otro:"
    read a
done

until [[ "$a" -gt "$numero" ]]
do
    let "suma=suma+a"
    let "a=a+2"
done

echo "La suma de sus pares es: $suma"
