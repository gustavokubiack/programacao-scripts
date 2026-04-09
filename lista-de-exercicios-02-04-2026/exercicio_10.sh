#!/bin/bash

# 10) F.U.S que script que liste todos os tickets abertos de um setor de helpdesk. Crie um arquivo com o nome tickets.txt e use `for` para ler as linhas do arquivo, if para verificar se o STATUS=aberto.
# Exemplo de arquivo tckets.txt

# ID:1 STATUS:aberto PRIORIDADE:alta USUARIO:joao DESCRICAO:Impressora nao funciona
# ID:2 STATUS:fechado PRIORIDADE:baixa USUARIO:maria DESCRICAO:Senha esquecida
# ID:3 STATUS:aberto PRIORIDADE:media USUARIO:pedro DESCRICAO:Internet lenta
# ID:4 STATUS:em andamento PRIORIDADE:alta USUARIO:ana DESCRICAO:Disco cheio
# ID:5 STATUS:aberto PRIORIDADE:critica USUARIO:carlos DESCRICAO:Servidor offline
# ID:6 STATUS:fechado PRIORIDADE:media USUARIO:lucas DESCRICAO:Email nao chega


IFS=$'\n'

for linha in $(cat tickets.txt); do
    if [[ "$linha" == *"STATUS:aberto"* ]]; then
        echo "$linha"
    fi
done