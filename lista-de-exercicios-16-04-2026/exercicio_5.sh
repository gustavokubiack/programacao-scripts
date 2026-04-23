#!/bin/bash

for arquivo in /tmp/*
do
    nome=$(basename "$arquivo")

    if [ "$nome" == "important.tmp" ]; then
        echo "Arquivo protegido encontrado: $nome. Pulando..."
        continue
    fi

    if [ -f "$arquivo" ]; then
        find "$arquivo" -mtime +7 -exec rm -f {} \;
        echo "Verificado: $arquivo"
    fi
done