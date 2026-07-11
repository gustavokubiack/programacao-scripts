#!/bin/bash
arquivo=$(dialog --stdout --inputbox "Digite o nome do arquivo:" 8 40)
antigo=$(dialog --stdout --inputbox "Digite o IP antigo:" 8 40)
novo=$(dialog --stdout --inputbox "Digite o IP novo:" 8 40)
sed -i "s/$antigo/$novo/g" "$arquivo"
dialog --msgbox "IP substituido com sucesso!" 6 40
clear
