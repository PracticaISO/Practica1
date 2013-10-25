#!/bin/bash

# ejercicio19

if [ $(whoami) = "root" ]   # Comprueba si eres root
then
    echo "Ejecutando como root"
fi

echo "Indica el directorio:"
read directorio

if test -e directorio
then
    chmod 755 $directorio
    umask 067 $directorio
else
    mkdir $directorio
    chmod 755 $directorio
    umask 067 $directorio
fi
