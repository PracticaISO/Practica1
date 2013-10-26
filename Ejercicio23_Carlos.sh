#!/bin/bash

# ejercicio23

numero=1
if test -z "$1"
then
    echo "No se pasó ningún argumento."
    exit 0
fi
echo "Se han pasado ""$#"" parametros"
for paramet in "$@"
do
    if [ "$numero" -gt 9 ]
    then
        echo -e "\t Parametro ""$numero"" "" : $paramet"
        let "numero=numero+1"
    else
        echo -e "\t Parametro 0""$numero"" "" : $paramet"
        let "numero=numero+1"
    fi
done
