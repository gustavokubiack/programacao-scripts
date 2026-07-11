#!/bin/bash
read -p "String antiga: " antiga
read -p "String nova: " nova
for arquivo in configs/*
do
    sed -i "s/$antiga/$nova/g" "$arquivo"
done
echo "Alteracoes concluidas"
