#!/bin/bash

for arquivo in *; do
	echo "$arquivo"
if [[ "$arquivo == *.txt" ]]; then
	break
fi
done