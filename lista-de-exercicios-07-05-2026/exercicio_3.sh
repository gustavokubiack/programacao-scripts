#!/bin/bash
renomear_bkp() {
    for arquivo in *.txt; do
        mv "$arquivo" "${arquivo%.txt}.bkp"
    done
}
renomear_bkp