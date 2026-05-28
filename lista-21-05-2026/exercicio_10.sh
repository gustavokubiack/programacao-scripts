#!/bin/bash
portas=(22 80 443)
echo "=== Verificação de Portas ==="
for porta in "${portas[@]}"; do
    if nc -z -w 2 localhost "$porta" &>/dev/null; then
        echo "Porta $porta: ABERTA"
    else
        echo "Porta $porta: FECHADA"
    fi
done