#!/bin/bash

# Verificar se dois números são iguais

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

if [ $num1 -eq $num2 ]; then
    echo "$num1 é igual a $num2"
else
    echo "$num1 não é igual a $num2"
fi
