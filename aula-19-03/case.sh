#!/bin/bash

echo "Qual é o dia?"
read dia

case $dia in 
1 ) echo "Domingo" ;;
2 ) echo "Segunda" ;;
3 ) echo "Terça" ;;
4 ) echo "Quarta" ;;
5 ) echo "Quinta" ;;
6 ) echo "Sexta" ;;
7 ) echo "Sábado" ;;
* ) echo "Não existe esse dia, cara pálida" ;;
esac


