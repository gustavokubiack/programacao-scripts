#!/bin/bash
resultado=$(grep "ERROR" /var/log/syslog 2>/dev/null)
if [ -n "$resultado" ]; then
    echo "Erros encontrados:"
    echo "$resultado"
else
    echo "Nenhum erro encontrado"
fi