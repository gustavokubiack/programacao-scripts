#!/bin/bash

# Exibir a quantidade de usuários logados

echo "Quantidade de usuários logados: $(who | wc -l)"
