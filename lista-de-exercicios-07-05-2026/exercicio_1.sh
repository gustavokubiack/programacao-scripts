#!/bin/bash

renomear_txt() {
    for arquivo in *.txt; do
        mv "$arquivo" "novo_$arquivo"
    done
}
renomear_txt