#!/bin/bash

# 11) F.U.S que utilize o arquivo criado no exercício anterior e monitore os tickets que estão com prioridade alta. Se o número de tickets com prioridade alta for >3 ele gerar ALERTA, senão, o STATUS será OK. O script para e sai do loop quando usuário digitar "sair"
# Exemplo de uma possível saída:

# ALERTA: 3 tickets em prioridade alta!
# Digite 'sair':

# Tickets com prioridade alta: <3 - OK.
# Digite 'sair':

while true; do
    count=0

    while read linha; do
        if [[ "$linha" == *"PRIORIDADE:alta"* ]]; then
            count=$((count + 1))
        fi
    done < tickets.txt

    if [ $count -gt 3 ]; then
        echo "ALERTA: $count tickets em prioridade alta!"
    else
        echo "Tickets com prioridade alta: $count - OK."
    fi

    echo "Digite 'sair':"
    read opcao

    if [ "$opcao" == "sair" ]; then
        break
    fi
done