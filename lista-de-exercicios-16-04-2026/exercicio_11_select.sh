#!/bin/bash

read -p "Digite um número: " num

PS3="Digite 10, 20, 30 ou 0 para sair: "

select opcao in 10 20 30 Sair
do
    case $REPLY in
        10|20|30)
            resultado=$((num * REPLY))
            echo "$num x $REPLY = $resultado"
            ;;
        0|4)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac
done