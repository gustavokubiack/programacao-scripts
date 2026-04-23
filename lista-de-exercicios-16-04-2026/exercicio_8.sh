#!/bin/bash

processo="nginx"

while true
do
    pgrep "$processo" > /dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "ALERTA: O processo $processo não está em execução!"
        break
    else
        echo "OK: O processo $processo está rodando."
    fi

    sleep 10
done