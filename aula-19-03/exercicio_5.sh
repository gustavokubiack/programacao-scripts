#!/bin/bash

echo "Quantos alunos para calcular a média?"

read num_alunos

echo "Calculando a média para $num_alunos alunos"

> notas.txt

soma=0
for ((aluno=1; aluno<=$num_alunos; aluno++)) do
	echo "Digite a nota do aluno: "
	read nota
	echo $nota >> notas.txt
	soma=$(expr $soma + $nota)
done

media=$(expr $soma / $num_alunos)
echo "A média é $media"