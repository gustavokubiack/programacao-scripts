#!/bin/bash
awk 'BEGIN{print "Inicio"} {print $1} END{print "Fim"}' dados.txt
