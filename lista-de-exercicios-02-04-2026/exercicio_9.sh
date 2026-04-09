#!/bin/bash

# 9) F.U.S que execute pings em um host em loop `while` até obter sucesso ou 5 falhas, use `if` no retorno de ping.

contador=1

while [ $contador -le 5 ]; do
	echo "Tentativa $contador"
    ping -c 1 192.168.0.1

    if [ $? -eq 0 ]; then
        echo "Sucesso"
        break
    else
        echo "Falha"
        contador=$((contador + 1))
    fi
done