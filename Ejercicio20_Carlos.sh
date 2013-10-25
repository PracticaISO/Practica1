#!/bin/bash

# ejercico20

nucleos=`cat /proc/cpuinfo | grep processor | wc -l`							#procesador
modelo=`cat /proc/cpuinfo | grep "model name" | awk -F:' ' '{ print $2 }'`				#modelo

if cat /proc/cpuinfo | egrep '(vmx|svn)' &>2								#virtualizacion
then
	virtualizacion="Sí"
else
	virtualizacion="No"
fi
memorialibrekb=`cat /proc/meminfo | grep "MemFree" | awk -F: '{ print $2 }' | awk '{ print $1 }'`	#memoria
let "memorialibremb = memorialibrekb / 1024"								#memoria MB

echo "Número de CPUs: $nucleos"										#imprime resultados
echo "Modelo de CPU: $modelo"
echo "Temperatura: $temperatura"
echo "Virtualización: $virtualizacion"
echo "Memoria libre: $memorialibremb MB"
