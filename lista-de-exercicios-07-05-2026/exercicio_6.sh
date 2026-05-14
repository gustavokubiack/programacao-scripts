#!/bin/bash
somar_exibir() {
    resultado=0
    for num in "$@"; do
        resultado=$((resultado + num))
    done
    echo "Soma: $resultado"
}
somar_exibir "$@"