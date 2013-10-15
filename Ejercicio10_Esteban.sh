#!/bin/bash

echo "El fichero introducido es: "$1
fichero=$1.MAY
cat $1 | tr [:lower:] [:upper:] > $fichero
echo "Ya está"
