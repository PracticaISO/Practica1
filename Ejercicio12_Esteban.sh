#!/bin/bash

date +%D-%H:%M > fecha.txt
dia=`cut -f 2 -d / fecha.txt| cut -f 1 -d / $1`
mes=`cut -f 1 -d / fecha.txt`
agno=
echo $dia
echo $mes
