#!/bin/bash

contador=0

for usuario in $(who | awk '{print $1}' | sort | uniq)
do
    if [ "$usuario" == "root" ]; then
        echo "ALERTA: usuário root está logado no sistema!"
        break
    fi

    contador=$((contador + 1))
done

echo "Quantidade de usuários distintos conectados: $contador"