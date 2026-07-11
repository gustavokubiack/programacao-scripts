#!/bin/bash
arquivo=$(zenity --file-selection --title="Escolha o arquivo de log")
sed -i '/^$/d' "$arquivo"
zenity --info --text="Linhas em branco removidas!"
