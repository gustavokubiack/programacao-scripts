#!/bin/bash

# Criar uma pasta "backup" e copiar todos os arquivos .txt para ela

mkdir -p backup
cp *.txt backup/ 2>/dev/null
echo "Pasta 'backup' criada e arquivos .txt copiados com sucesso"
