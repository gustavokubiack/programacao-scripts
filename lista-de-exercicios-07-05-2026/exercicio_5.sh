#!/bin/bash
somar_guardar() {
    resultado=0
    for num in "$@"; do
        resultado=$((resultado + num))
    done
}
somar_guardar "$@"