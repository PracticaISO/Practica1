#!/bin/bash

# ejercico20

nucleos=`cat /proc/cpuinfo | grep processor | wc -l`
modelo=`cat /proc/cpuinfo | grep "model name" | awk -F:' ' '{ print $2 }'`
#temperatura=`cat /proc/acpi/thermal_zone/*/temperature ¿?`
if cat /proc/cpuinfo | egrep '(vmx|svn)' &>2
then
	virtualizacion="Sí"
else
	virtualizacion="No"
fi
memorialibrekb=`cat /proc/meminfo | grep "MemFree" | awk -F: '{ print $2 }' | awk '{ print $1 }'`
let "memorialibremb = memorialibrekb / 1024"

echo "Número de CPUs: $nucleos"
echo "Modelo de CPU: $modelo"
echo "Temperatura: $temperatura"
echo "Virtualización: $virtualizacion"
echo "Memoria libre: $memorialibremb MB"
