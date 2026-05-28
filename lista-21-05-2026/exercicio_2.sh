#!/bin/bash
servicos=("ssh" "nginx" "mysql" "cron" "apache2")
echo "Status dos Serviços:"
for servico in "${servicos[@]}"; do
    if systemctl is-active --quiet "$servico" 2>/dev/null; then
        echo "$servico: ATIVO"
    else
        echo "$servico: PARADO"
    fi
done