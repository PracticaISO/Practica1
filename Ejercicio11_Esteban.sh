#!/bin/bash

comandos_ini=$1
a=$#
let "n=a - 1"
shift $n 
comandos_fin=$1

echo "$comandos_ini"
echo "$comandos_fin"
