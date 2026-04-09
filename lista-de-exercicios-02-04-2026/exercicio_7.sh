#!/bin/bash

# 7) F.U.S utilizando `for` para analisar o diretório /home/*, use `if` para verificar se dir existe e `du` para tamanho >1M, alertando helpdesk.

for dir in /home/*; do

    if [ -d "$dir" ]; then
        tamanho=$(du -sk "$dir" | cut -f1)
        if [ "$tamanho" -gt 1024 ]; then
            echo "ALERTA: Diretório $dir está com mais de 1MB (${tamanho} KB)"
        fi

    fi

done