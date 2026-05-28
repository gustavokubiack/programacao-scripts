#!/bin/bash
processos=("sshd" "nginx" "mysql" "cron")
echo "=== Monitoramento de Processos Críticos ==="
for processo in "${processos[@]}"; do
    if ps aux | grep -v grep | grep -q "$processo"; then
        echo "$processo: ATIVO"
    else
        echo "$processo: NÃO ESTÁ EM EXECUÇÃO"
    fi
done