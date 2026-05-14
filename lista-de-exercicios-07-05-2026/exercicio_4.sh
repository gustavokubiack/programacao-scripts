#!/bin/bash
verificar_negativo() {
    read -p "Digite o valor inicial: " valor
    while true; do
        valor=$((valor - 3))
        echo "Valor: $valor"
        if [ $valor -lt 0 ]; then
            echo "Valor negativo, encerrando."
            exit 0
        fi
    done
}
verificar_negativo