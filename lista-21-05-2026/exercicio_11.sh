#!/bin/bash
pacotes=("openssh-server" "curl" "net-tools")
apt-get update -qq 2>/dev/null
echo "=== Status de Atualização dos Pacotes ==="
for pacote in "${pacotes[@]}"; do
    atualizavel=$(apt-get --just-print upgrade 2>/dev/null | grep "^Inst $pacote ")
    if [ -n "$atualizavel" ]; then
        echo "$pacote: PRECISA SER ATUALIZADO"
    else
        echo "$pacote: ATUALIZADO"
    fi
done