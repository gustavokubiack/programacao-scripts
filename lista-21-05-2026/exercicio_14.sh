#!/bin/bash
resultado=$(grep -i "dns\|nxdomain\|resolution failed\|name or service not known" /var/log/syslog 2>/dev/null)
if [ -n "$resultado" ]; then
    echo "Falhas de DNS encontradas:"
    echo "$resultado"
else
    echo "Não foram encontradas falhas de DNS"
fi