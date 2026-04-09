#!/bin/bash

# Verificar se um diretório está vazio

read -p "Digite o caminho do diretório: " diretorio

if [ -d "$diretorio" ]; then
    if [ -z "$(ls -A "$diretorio")" ]; then
        echo "O diretório '$diretorio' está vazio"
    else
        echo "O diretório '$diretorio' não está vazio"
    fi
else
    echo "'$diretorio' não é um diretório válido"
fi
