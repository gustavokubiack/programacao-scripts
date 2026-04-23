#!/bin/bash

read -p "Digite um número: " num

for mult in 10 15 20 25 30
do
    if [ "$mult" -eq 15 ] || [ "$mult" -eq 25 ]; then
        continue
    fi

    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
done