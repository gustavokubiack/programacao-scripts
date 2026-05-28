#!/bin/bash
total=$(grep "Accepted password\|Accepted publickey" /var/log/auth.log 2>/dev/null | wc -l)
echo "Total de logins SSH bem-sucedidos: $total"