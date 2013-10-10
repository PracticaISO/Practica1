#!/bin/bash

# ejercicio06
# Escribe un script que tome 100 números aleatorios entre 0 y 99. 
# A continuación debe mostrar cuántos números están comprendidos
# en los intervalos [0-20], [21-40], [41-60], [61-80] y [81-100].
# Ejemplo:
# [0-19]: 12
# [20-39]: 34
# [40-59]: 20
# [60-79]: 15
# [80-99]: 19

intervalo1=0
intervalo2=0
intervalo3=0
intervalo4=0
intervalo5=0

for i in {1..100}
do
    aleatorio=`echo $((RANDOM%100))`
    
    if (( "$aleatorio"==0 )) || (( "$aleatorio"<20 ))
    then
        let "intervalo1=intervalo1+1"
    fi
    if (( "$aleatorio">19)) && (( "$aleatorio"<40 ))
    then
        let "intervalo2=intervalo2+1"
    fi
    if (( "$aleatorio">39)) && (( "$aleatorio"<60 ))
    then
        let "intervalo3=intervalo3+1"
    fi 
    if (( "$aleatorio">59)) && (( "$aleatorio"<80 ))
    then
        let "intervalo4=intervalo4+1"
    fi
    if (( "$aleatorio">79)) && (( "$aleatorio"<100 ))
    then
        let "intervalo5=intervalo5+1"
    fi
done

echo "[0-19]:$intervalo1"
echo "[20-39]:$intervalo2"
echo "[40-59]:$intervalo3"
echo "[60-79]:$intervalo4"
echo "[80-99]:$intervalo5"
