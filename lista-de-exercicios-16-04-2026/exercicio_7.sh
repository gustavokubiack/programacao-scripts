#!/bin/bash

arquivo="usuarios.txt"

while read usuario
do
    id "$usuario" > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Usuário $usuario já existe. Pulando..."
        continue
    fi

    useradd "$usuario"

    if [ $? -ne 0 ]; then
        echo "Erro ao criar o usuário $usuario"
        break
    else
        echo "Usuário $usuario criado com sucesso."
    fi
done < "$arquivo"