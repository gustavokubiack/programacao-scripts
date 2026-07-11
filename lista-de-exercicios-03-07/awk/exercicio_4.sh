#!/bin/bash
awk '{soma += $1; n++} END{print "Media: " soma/n}' valores.txt
