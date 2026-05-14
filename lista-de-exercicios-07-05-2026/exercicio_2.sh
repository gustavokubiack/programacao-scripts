#!/bin/bash
calcular_media() {
    soma=0
    for num in "$@"; do
        soma=$((soma + num))
    done
    echo "scale=2; $soma / $#" | bc
}
calcular_media "$@"