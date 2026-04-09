#!/bin/bash

# Pedir ao usuário para digitar dois números e exibir a soma

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2
echo "A soma de $num1 e $num2 é: $((num1 + num2))"
