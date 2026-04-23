#!/bin/bash

read -p "Digite um número: " num

i=1

while [ $i -le 3 ]
do
    mult=$((i * 10))
    resultado=$((num * mult))
    echo "$num x $mult = $resultado"
    i=$((i + 1))
done