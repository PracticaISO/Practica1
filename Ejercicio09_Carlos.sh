#!/bin/bash

#ejercicio09

echo "Introduzca un numero: "
read num1
echo "Introduzca otro numero: "
read num2
a=$num1
b=$num2

while [$b -ne 0]
do
  let c=$b
  let b=$a%$b
  let a=$c
done
echo "El mcd ($num1,$num2) es $a"
