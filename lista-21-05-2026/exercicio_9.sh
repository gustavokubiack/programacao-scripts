#!/bin/bash
hosts=("google.com" "github.com" "192.168.0.1")
echo "=== Teste de Conectividade ==="
for host in "${hosts[@]}"; do
    if ping -c 1 -W 2 "$host" &>/dev/null; then
        echo "$host: ACESSÍVEL"
    else
        echo "$host: INACESSÍVEL"
    fi
done