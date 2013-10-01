#!/bin/bash
echo "Introduzca el valor deseado"
read n1
read n2
read n3
read n4
if [ $n1 -lt $n2 ] && [ $n1 -lt $n3 ] && [ $n1 -lt $n4 ]
echo "El numero menor es: " $n1
fi
if [ $n2 -lt $n1 ] && [ $n2 -lt $n3 ] && [ $n2 -lt $n4 ]
echo "El numero menor es: " $n2
fi
if [ $n3 -lt $n1 ] && [ $n3 -lt $n2 ] && [ $n1 -lt $n4 ]
echo "El numero menor es: " $n3
fi
if [ $n4 -lt $n1 ] && [ $n4 -lt $n2 ] && [ $n4 -lt $n3 ]
echo "El numero menor es: " $n4
fi
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ]
then
echo "El numero mayor es: " $n1
fi
if [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ]
then
echo "el numero mayor es: " $n2
fi
if [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n1 -gt $n4 ]
then
echo "El numero mayor es: " $n3
fi
if [ $n4 -gt $n1 ] && [ $n4 -gt $n2 ] && [ $n4 -gt $n3 ]
echo "El numero mayor es: " $n4
fi
