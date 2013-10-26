#!/bin/bash

# ejercicio29

echo -e "Dominio: "
read dominio
echo -e "Dirección de red: "
read red
echo -e "Gateway: "
read gateway
echo -e "DNS 1: "
read dns1
echo -e "DNS 2: "
read dns2
equipo="pc-0"
numero=1
subred=`echo $red | awk -F. '{ print $1 "." $2 "." $3 }'`

echo
echo "Salida estandar del fichero de configuracion del servidor DHCP"
echo
echo "option domain-name $dominio;"
echo "option domain-name-servers $dns1 $dns2;"
echo
echo "authoritative;"
echo
echo "subnet $red netmask 255.255.255.0 {"
echo -e "\trange $subred.5 $subred.253;"
echo -e "\toption routers $gateway;"
echo -e "\toption broadcast-address $subred.255;"
echo -e "\tdefault-lease-time 600;"
echo -e "\tmax-lease-time 7200;"
echo "}"

for MAC in $(cat equipos.txt)
do 	
	maquina="$equipo$numero"
	echo "host $maquina { hardware ethernet $MAC;"
	echo -e "\tfixed address $subred.$numero; }"
	echo
	let "numero=$numero+1"
done
