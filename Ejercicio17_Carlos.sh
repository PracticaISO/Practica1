#!/bin/bash

# ejercicio17

if uname -a | grep "Ubuntu"
then
	if test -z "$1"
	then
		echo "No se pasó ningún argumento."
		exit 1
	fi
	
	if [ "$1" = "update" ]
	then
		apt-get update
	fi
	if [ "$1" = "upgrade" ]
	then
		apt-get upgrade
	fi
	if [ "$1" = "install" ]
	then
		apt-get install "$2"
	fi
	if [ "$1" = "remove" ]
	then
		apt-get remove "$2"
	fi
fi

if uname -a | grep "fc"
then
	if test -z "$1"
	then
		echo "No se pasó ningún argumento."
		exit 1
	fi
	
	if [ "$1" = "update" ]
	then
		yum update
	fi
	if [ "$1" = "upgrade" ]
	then
		yum upgrade
	fi
	if [ "$1" = "install" ]
	then
		yum install "$2"
	fi
	if [ "$1" = "remove" ]
	then
		yum remove "$2"
	fi
fi
