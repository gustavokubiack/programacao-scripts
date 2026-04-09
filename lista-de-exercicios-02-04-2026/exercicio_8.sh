#!/bin/bash

while true; do
    echo "Digite o status (cpu, mem, disco) ou 'sair':"
    read opcao

    case $opcao in
        cpu)
            top -n 1
            ;;
        mem)
            free -h
            ;;
        disco)
            df -h
            ;;
        sair)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida!"
            ;;
    esac
done