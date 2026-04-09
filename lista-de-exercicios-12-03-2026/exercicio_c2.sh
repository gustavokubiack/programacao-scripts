#!/bin/bash

# Verificar se um número é menor que outro

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

if [ $num1 -lt $num2 ]; then
    echo "$num1 é menor que $num2"
else
    echo "$num1 não é menor que $num2"
fi
