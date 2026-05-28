#!/bin/bash
diretorios=("diretorio_para_teste")
mkdir -p /tmp/backups
for dir in "${diretorios[@]}"; do
    nome=$(echo "$dir" | tr '/' '_' | sed 's/^_//')
    tar -czf "/tmp/backups/${nome}.tar.gz" "$dir" 2>/dev/null
    echo "Backup de $dir salvo em /tmp/backups/${nome}.tar.gz"
done