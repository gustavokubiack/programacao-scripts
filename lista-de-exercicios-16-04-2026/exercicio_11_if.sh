#!/bin/bash

read -p "Digite um número: " num

for i in 1 2 3
do
    if [ $i -eq 1 ]; then
        mult=10
    elif [ $i -eq 2 ]; then
        mult=20
    else
        mult=30
    fi

    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
done