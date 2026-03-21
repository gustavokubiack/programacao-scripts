#!/bin/bash

while read num; do
    if [ "$num" -lt 0 ]; then
      break
	fi
	soma=$((soma + num))
done < numeros.txt

echo "Soma: $soma"