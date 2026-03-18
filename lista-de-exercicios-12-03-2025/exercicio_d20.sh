#!/bin/bash

# Receber nome de comando e exibir descrição e página de ajuda

read -p "Digite o nome de um comando Linux: " comando

echo "Descrição do comando '$comando':"
whatis $comando 2>/dev/null || echo "Comando não encontrado em whatis"

echo ""
echo "Página de ajuda reduzida:"
$comando --help 2>&1 | less
