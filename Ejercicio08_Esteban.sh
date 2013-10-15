#! /bin/bash

echo "Introduzca un número binario: "
read numero

while [[ ! "$numero" =~ ^[0-1]+$ ]]
do
	echo "El número no es binario, introduzca otro numero: "
    read numero
done

decimal=`echo "obase=10; ibase=2; $numero" | bc`
octal=`echo "obase=8; ibase=2; $numero" | bc`
hexadecimal=`echo "obase=16; ibase=2; $numero" | bc`

echo "Decimal: $decimal"
echo "Octal: 0$octal"
echo "Hexadecimal: 0x$hexadecimal"
