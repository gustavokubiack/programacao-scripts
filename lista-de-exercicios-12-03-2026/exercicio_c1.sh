#!/bin/bash

# Verificar se um número é maior que outro

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

if [ $num1 -gt $num2 ]; then
    echo "$num1 é maior que $num2"
else
    echo "$num1 não é maior que $num2"
fi
