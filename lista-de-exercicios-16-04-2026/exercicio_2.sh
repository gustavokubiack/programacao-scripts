#!/bin/bash

servicos=("sshd" "cron" "nginx")

for servico in "${servicos[@]}"
do
    systemctl is-active --quiet "$servico"

    if [ $? -ne 0 ]; then
        echo "ALERTA: O serviço $servico está parado!"
        break
    else
        echo "OK: O serviço $servico está em execução."
    fi
done