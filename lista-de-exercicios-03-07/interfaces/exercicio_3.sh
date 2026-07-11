#!/bin/bash
arquivo=$(dialog --stdout --inputbox "Digite o nome do arquivo:" 8 40)
soma=$(awk '{soma += $1} END{print soma}' "$arquivo")
dialog --msgbox "A soma total e: $soma" 6 40
clear
