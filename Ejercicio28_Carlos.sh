#!/bin/bash

# ejercicio28

lista=`ifconfig -s -a | awk -F ' ' ' { print $1 } ' | sort | grep -v Iface`
for interfaz in $lista
do
    ip=`ifconfig $interfaz | grep inet: | awk -F' ' '{print $2}' | awk -F: '{ print $2 }'`
    red=`ip route | grep -iw $interfaz | awk -F' ' '{print $1}' | head -n 1`

    if test -e $ip
    then
        ip="no configurada"
    fi
    if test -e $red
    then
        red="no configurada"
    fi
    if [ $interfaz == "lo" ]
    then
        red="(127.0.0.0/8)"
    fi
    echo -e "\t$interfaz\t$ip\t$red"
done
