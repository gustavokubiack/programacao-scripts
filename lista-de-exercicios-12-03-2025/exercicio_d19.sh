#!/bin/bash

# Receber caminho de arquivo e informar seu tipo

read -p "Digite o caminho do arquivo: " arquivo

if [ -f "$arquivo" ]; then
    echo "Tipo de arquivo: "
    file "$arquivo"
else
    echo "Arquivo não encontrado: $arquivo"
fi
