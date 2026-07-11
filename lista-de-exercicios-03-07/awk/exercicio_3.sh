#!/bin/bash
awk '{soma += $1} END{print "Soma total: " soma}' valores.txt
