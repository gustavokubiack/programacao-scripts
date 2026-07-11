#!/bin/bash
awk 'BEGIN{print "Inicio"} {n++} END{print "Total de linhas: " n; print "Fim"}' dados.txt
