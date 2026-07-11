#!/bin/bash
awk 'BEGIN{print "Inicio"} $1 > 50 {print} END{print "Fim"}' valores.txt
