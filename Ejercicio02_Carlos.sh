#!/bin/bash
echo "Introduce un numero de dos cifras: "
read n1
let d1=$n1/10
let d2=$n1%10
echo "El numero al reves es: " $d2$d1
