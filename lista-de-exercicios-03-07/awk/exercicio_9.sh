#!/bin/bash
awk 'NR==1{menor=maior=$1} {if($1<menor) menor=$1; if($1>maior) maior=$1} END{print "Menor: " menor; print "Maior: " maior}' valores.txt
