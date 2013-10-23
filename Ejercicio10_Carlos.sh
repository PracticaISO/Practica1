#!/bin/bash
#ejercicio10

cat $1 | awk '{print toupper($0)}' > "$1.MAY"

echo "Conversion a mayusculas completada"
