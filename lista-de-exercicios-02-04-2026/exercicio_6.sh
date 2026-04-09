#!/bin/bash

# 5) F.U.S utilizando `for` regressivo (10 a 1) para simular contagem antes de "reiniciar", interrompendo com `if` se o uptime for <1h (use `uptime`).

upt=$(uptime | awk '{print $3}' | tr -d ',')
for ((num=10; num>=1; num--)); do
    echo "$num..."
    if [ "$upt" -lt 1 ]; then
        echo "Cancelando devido ao uptime ser < 1h"
    fi
done