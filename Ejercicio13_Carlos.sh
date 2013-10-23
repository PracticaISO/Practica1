#!/bin/bash

echo "Usuarios con UID >= 1000: "
cat /etc/passwd | awk -F: '$3 >= 1000 {printf "\t%-15s %s\n", $1, $3}'
