#!/bin/bash

# ejercicio21

echo "Introduce una IP valida para escanear:"
read ip

if ping "$ip" -c 4 &>2               # Comprobar que responde el ping
then
    ping="RESPONDE"
else
    ping="NO RESPONDE"
fi

if nmap -p 80 "$ip" | grep open &>2  # Comprueba http
then
    http="ABIERTO"
else
    http="--CERRADO--"
fi

if nmap -p 443 "$ip" | grep open &>2 # Comprueba https
then
    https="ABIERTO"
else
    https="--CERRADO--"
fi

if nmap -p 22 "$ip" | grep open &>2  # Comprueba ssh
then
    ssh="ABIERTO"
else
    ssh="--CERRADO--"
fi

if nmap -p 21 "$ip" | grep open &>2  # Comprueba ftp
then
    ftp="ABIERTO"
else
    ftp="--CERRADO--"
fi
									                   # Imprime los resultados
echo "Escaneando:   $ip"
echo "Ping:         $ping"
echo "Puerto HTTP:  $http"
echo "Puerto HTTPS: $http"
echo "Puerto SSH:   $ssh"
echo "Puerto FTP:   $ftp"
