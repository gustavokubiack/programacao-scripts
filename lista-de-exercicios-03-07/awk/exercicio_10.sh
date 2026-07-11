#!/bin/bash
matricula=$1
faltas=$2
p1=$3
p2=$4
p3=$5
final=$6
nome=$7

awk -v mat="$matricula" -v faltas="$faltas" -v p1="$p1" -v p2="$p2" -v p3="$p3" -v final="$final" -v nome="$nome" 'BEGIN{
    media = (p1 + 2*p2 + 3*p3) / 6
    freq = 60 - faltas

    if (media < 40)
        situacao = "R-nota"
    else if (media >= 70)
        situacao = "Aprovado"
    else {
        if (final != "") {
            media = (media + final) / 2
            if (media >= 50)
                situacao = "Aprovado"
            else
                situacao = "R-nota"
        } else {
            situacao = "Final"
        }
    }

    print "----- Relatorio -----"
    print "Matricula: " mat
    print "Nome: " nome
    print "Notas: p1=" p1 " p2=" p2 " p3=" p3
    print "Faltas: " faltas
    print "Frequencia: " freq
    print "Media: " media
    print "Situacao: " situacao
}'
