#!/bin/bash

# 5) F.U.S que que liste os serviços que estão em /etc/init.d utilizando `for`, e use `if` para verificar se o arquivo existe e é executável.

servicos=$(cd /etc/init.d && ls)

for servico in $servicos; do
    if [ -f "/etc/init.d/$servico" ] && [ -x "/etc/init.d/$servico" ]; then
        echo "$servico"
    fi
done
