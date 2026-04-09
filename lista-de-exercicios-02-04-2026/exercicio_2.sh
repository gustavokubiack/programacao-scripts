#!/bin/bash

# 2) F.U.S que que verifique o uso de disco em /home (usando df) e avise se o espaço ocupado é >80%. Use while para repetir a operação até o usuário digitar 'sair', utilizando para isso if.

while true; do
    read -p "Verifique o uso de disco (enter) ou digite 'sair' para encerrar: " resposta

    if [ "$resposta" == "sair" ]; then
        break
    fi

    uso=$(df /home | awk 'NR==2 {print $5}' | tr -d '%')

    echo "Uso atual de /home: $uso%"

    if [ "$uso" -gt 80 ]; then
        echo "Atenção: uso de disco acima de 80%!"
    fi
done