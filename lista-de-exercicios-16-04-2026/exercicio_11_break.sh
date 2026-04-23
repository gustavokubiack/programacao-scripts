#!/bin/bash

read -p "Digite um número: " num

for mult in 10 20 30 40 50
do
    if [ "$mult" -gt 30 ]; then
        break
    fi

    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
done