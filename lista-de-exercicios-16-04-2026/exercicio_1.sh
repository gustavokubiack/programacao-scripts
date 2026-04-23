#!/bin/bash

df -h | tail -n +2 | while read linha
do
    sistema=$(echo "$linha" | awk '{print $1}')
    uso=$(echo "$linha" | awk '{print $5}' | sed 's/%//')
    ponto=$(echo "$linha" | awk '{print $6}')

    # Ignora partições pequenas/temporárias
    if [[ "$sistema" == "tmpfs" || "$sistema" == "udev" ]]; then
        continue
    fi

    if [ "$uso" -gt 80 ]; then
        echo "ALERTA: O ponto de montagem $ponto está com uso em $uso%"
    else
        echo "OK: $ponto está com uso em $uso%"
    fi
done