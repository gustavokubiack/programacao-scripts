#!/bin/bash

echo "Escolha uma fruta: "

select FRUTA in ameixa banana uva maça laranja STOP; do
	if [ "$FRUTA" == "STOP" ]; then
		echo "Programa finalizado"
		break
	fi
	if [ -z "$FRUTA" ]; then
    	echo "Opção inválida"
	else
		echo "Ótima escolha de fruta! $FRUTA"
	fi
done

