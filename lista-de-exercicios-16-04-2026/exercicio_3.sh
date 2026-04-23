#!/bin/bash

diretorios=("/diretorio_nao_existe" "../aula-09-04")
destino="$(pwd)/backup"
mkdir -p "$destino"

for dir in "${diretorios[@]}"
do
    if [ ! -d "$dir" ]; then
        echo "Diretório $dir não existe. Pulando..."
        continue
    fi

    cp -r "$dir" "$destino"

    if [ $? -ne 0 ]; then
        echo "Erro ao fazer backup de $dir"
        break
    else
        echo "Backup de $dir realizado com sucesso."
    fi
done