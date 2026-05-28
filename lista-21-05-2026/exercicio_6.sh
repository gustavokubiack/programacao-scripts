#!/bin/bash
total=$(grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l)
echo "Total de tentativas de login SSH com falha: $total"