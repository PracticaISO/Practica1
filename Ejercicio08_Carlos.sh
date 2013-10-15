#!/bin/bash

# ejercicio08
# Escribe un script que acepte como entrada un número en binario
# y lo escriba en decimal, octal y hexadecimal. Ejemplo:
# Introduzca un número (binario): 1001010
# Decimal: 74
# Octal: 0112
# Hexadecimal: 0x4A

echo "Introduzca un número binario: "
read numero

if [[ ! "$numero" =~ ^[0-1]+$ ]]
then
    echo "El número no es binario, introduzca otro numero: "
    read numero
fi

decimal=`echo "obase=10; ibase=2; $numero" | bc`
octal=`echo "obase=8; ibase=2; $numero" | bc`
hexadecimal=`echo "obase=16; ibase=2; $numero" | bc`

echo "Decimal: $decimal"
echo "Octal: 0$octal"
echo "Hexadecimal: 0x$hexadecimal"
