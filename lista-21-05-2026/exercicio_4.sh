#!/bin/bash
usuarios=("root" "ubuntu" "admin" "user1" "digital")
logados=$(who | awk '{print $1}')
echo "=== Status de Login dos Usuários ==="
for usuario in "${usuarios[@]}"; do
    if echo "$logados" | grep -qw "$usuario"; then
        echo "$usuario: CONECTADO"
    else
        echo "$usuario: NÃO ESTÁ CONECTADO"
    fi
done