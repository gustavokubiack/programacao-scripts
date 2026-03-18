#!/bin/bash

# Pedir ao usuário para digitar uma palavra e exibir o tamanho

read -p "Digite uma palavra: " palavra
echo "O tamanho da palavra '$palavra' é: ${#palavra}"
