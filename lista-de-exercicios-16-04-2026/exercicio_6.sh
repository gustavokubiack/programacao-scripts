#!/bin/bash

arquivo="hosts.txt"

while read host
do
    ping -c 1 "$host" > /dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "ALERTA: Falha na conectividade com $host"
        break
    else
        echo "OK: $host está acessível"
    fi
done < "$arquivo"