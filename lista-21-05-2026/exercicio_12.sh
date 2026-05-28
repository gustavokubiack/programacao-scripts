#!/bin/bash
ip_busca="192.168.0.5"
log_nginx="/var/log/nginx/access.log"
log_apache="/var/log/apache2/access.log"
log=""
[ -f "$log_nginx" ] && log="$log_nginx"
[ -f "$log_apache" ] && log="$log_apache"
if [ -z "$log" ]; then
    echo "Arquivo de log não encontrado"
    exit 1
fi
resultado=$(grep "$ip_busca" "$log" 2>/dev/null)
if [ -n "$resultado" ]; then
    echo "Acessos encontrados do IP $ip_busca:"
    echo "$resultado"
else
    echo "Não foram encontrados acessos suspeitos do IP $ip_busca"
fi