#!/bin/bash

# 4) F.U.S que pergunte por um usuário e liste seus processos (ps) em loop while, parando com 'q'. Use if para verificar se PID >0.

while true; do
    read -p "Digite o nome do usuário (ou 'q' para sair): " resposta

    if [ "$resposta" == "q" ]; then
        break
    fi

    if id "$resposta" >/dev/null 2>&1; then
        echo "Processos do usuário: $resposta"

        processos=$(ps -u "$resposta" -o pid=)

        for pid in $processos; do
            if [ "$pid" -gt 0 ]; then
                echo "PID: $pid"
            fi
        done
    else
        echo "Usuário não existe!"
    fi

    echo ""
done