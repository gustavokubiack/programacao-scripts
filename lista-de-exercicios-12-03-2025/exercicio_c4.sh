#!/bin/bash

# Verificar se um arquivo existe

read -p "Digite o caminho do arquivo: " arquivo

if [ -f "$arquivo" ]; then
    echo "O arquivo '$arquivo' existe"
else
    echo "O arquivo '$arquivo' não existe"
fi
