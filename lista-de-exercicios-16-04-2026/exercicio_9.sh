#!/bin/bash

DIRETORIO="${1:-.}"

for arquivo in "$DIRETORIO"/*; do
    [ -e "$arquivo" ] || continue

    nome=$(basename "$arquivo")

    [ "$nome" = "config.conf" ] && continue

    if [ -w "$arquivo" ] && stat -c "%A" "$arquivo" | grep -q "^.\{5,\}.w"; then
        echo "$arquivo — $(stat -c '%A %U %G' "$arquivo")"
    fi
done