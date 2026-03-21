#!/bin/bash

echo "Data"
date
echo

echo "Uso do disco"
df -h
echo

echo "Usuários ativos"
w

nome="Gustavo"
echo "Seu nome é $nome"

echo "Digite seu sobrenome"
read sobrenome
echo "Seu sobrenome é $sobrenome"


echo "Soma $(expr 1 + 2)"