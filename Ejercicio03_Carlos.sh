#!/bin/bash

# ejercicio03
# Escribe un script que imprima las 10 tablas de multiplicar. 
# Sin bucles for.

a=1                                 
b=1
final=10 
until [ "$b" -gt "$final" ]
do
    echo "Tabla del ""$b"
    until [ "$a" -gt "$final" ]  
    do
        let "res=a*b"
        echo "$a""x""$b""=""$res"
        let "a+=1"
    done
    echo
    a=1
    let "b+=1"
done

exit 0
