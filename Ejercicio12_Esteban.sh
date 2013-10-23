#!/bin/bash

date +%D-%H:%M > fecha.txt
dia=`cut -f 2 -d / fecha.txt`
mes=`cut -f 1 -d / fecha.txt`
agno=`cut -f 3 -d / fecha.txt| cut -f 1 -d - `
hora=`cut -f 3 -d / fecha.txt| cut -f 2 -d -|cut -f 1 -d :`
minutos=`cut -f 3 -d / fecha.txt| cut -f 2 -d -|cut -f 2 -d :` 

case "$mes" in
"1") mes=ENE;;
"2") mes=FEB;;
"3") mes=MAR;;
"4") mes=ABR;;
"5") mes=MAY;;
"6") mes=JUN;;
"7") mes=JUL;;
"8") mes=AGO;;
"9") mes=SEP;;
"10") mes=OCT;;
"11") mes=NOV;;
"12") mes=DIC;;
esac

echo "Son las $hora horas $minutos minutos de $dia de $mes de 20$agno" 
read
rm fecha.txt
