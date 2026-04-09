#!/bin/bash

# 3) F.U.S a partir de um menu utilizando case existam as opções: 
# 1-usuários logados; 
# 2-espaço disco; 
# 3-sair. 
# Use while para repetir até sair.

while true; do
    read -p "Digite uma das opções '1', '2' e '3': " opcao
    case $opcao in
    1 ) 
        echo "Usuários logados"
        who
        ;;
    2 ) 
        echo "Espaço em disco"
        df -h
        ;;
    3) 
        echo "Saindo..."
        break
        ;;
    esac
echo ""
done