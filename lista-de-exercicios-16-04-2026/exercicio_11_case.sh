#!/bin/bash

read -p "Digite um número: " num

for i in 1 2 3
do
    case $i in
        1) mult=10 ;;
        2) mult=20 ;;
        3) mult=30 ;;
    esac

    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
done