#!/bin/bash

# Pedir ao usuário para digitar um número e exibir o dobro

read -p "Digite um número: " numero
echo "O dobro de $numero é: $((numero * 2))"
