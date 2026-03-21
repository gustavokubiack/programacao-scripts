#!/bin/bash

for ((num=1; num<=10; num++)); do
	if ((num % 2 != 0)); then
		echo $num
	fi
done