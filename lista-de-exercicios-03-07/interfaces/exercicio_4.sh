#!/bin/bash
arquivo=$(zenity --file-selection --title="Escolha o arquivo de valores")
media=$(awk '{soma += $1; n++} END{print soma/n}' "$arquivo")
zenity --info --text="A media e: $media"
