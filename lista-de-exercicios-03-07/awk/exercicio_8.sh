#!/bin/bash
awk '{for(i=1;i<=NF;i++) c[$i]++} END{for(p in c) print p": "c[p]}' texto.txt
