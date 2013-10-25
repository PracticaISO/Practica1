#!/bin/bash

# ejercicioo18

if [ ! -d "$2" ]				# Comprueba que existe el directorio
then
    echo "El directorio $1 no existe."
    exit 1
else
	if ls "$2" | grep '' &>2	# Comprueba si esta vacio el directorio
	then
		echo "Pulsa Enter para activar la conversion"
		read
	fi
fi

cd $1
cp *.mp3 $2
dir2ogg $2
cd $2
rm *.mp3
