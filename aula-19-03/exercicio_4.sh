#!/bin/bash

while read nome; do
    if [[ "$nome" == A* ]]; then
      echo "$nome"
	fi
done < nomes.txt

