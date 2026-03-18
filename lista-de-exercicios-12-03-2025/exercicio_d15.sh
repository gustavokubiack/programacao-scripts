#!/bin/bash

# Listar conteúdo detalhado e redirecionar para arquivo, descartando erros

ls -l > saida.txt 2>/dev/null
echo "Saída do 'ls -l' redirecionada para 'saida.txt'"
