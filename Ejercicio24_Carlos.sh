#!/bin/bash

# ejercicio24


if test -d "$1"
then
    echo
else
	echo "$1 no existe o no es un directorio."
	exit 1
fi

while [ 1 ]
do
	for i in $(find $1 -iname "*.jpg" -or -iname "*.png")
	do
		gconftool-2 -t string -s /desktop/gnome/background/picture_filename $i
        sleep 2h
	done
done
wait

# falta probar en gnome
