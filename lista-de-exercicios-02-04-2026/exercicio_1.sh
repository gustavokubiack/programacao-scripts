#!/bin/bash

# F.U.S. que liste todos os usuários logados (usando who) e conte quantos estão ativos. Use for para iterar sobre a saída e if para filtrar cabeçalhos.

count=0

for usuario in $(who | awk '{print $1}'); do
    if [ -n "$usuario" ]; then
        echo "Usuário logado: $usuario"
        count=$((count + 1))
    fi
done

echo "Total de usuários ativos: $count"