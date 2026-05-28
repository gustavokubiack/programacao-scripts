#!/bin/bash
ips=("192.168.0.1" "10.0.0.5" "192.168.0.100" "172.16.0.1" "192.168.0.254" "192.168.1.50")

echo "IPs válidos na rede 192.168.0.0/24:"
for ip in "${ips[@]}"; do
    prefixo=$(echo "$ip" | cut -d'.' -f1-3)
    if [ "$prefixo" = "192.168.0" ]; then
        echo "$ip"
    fi
done