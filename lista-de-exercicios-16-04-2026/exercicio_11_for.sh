#!/bin/bash

read -p "Digite um número: " num

for mult in 10 20 30
do
    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
done