#!/bin/bash

# Procurar arquivos que pertencem ao usuário atual e salvar em arquivo

find / -user $USER -type f 2>/dev/null > meus_arquivos.log
echo "Lista de arquivos salvos em 'meus_arquivos.log'"
