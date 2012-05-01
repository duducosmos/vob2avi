#!/bin/bash
# -*- coding: utf-8 -*-
# Converte vob para avi

if [ $1 ]; then

    clear
    
    if [ "$1"=="-h" ]; then
        echo " "
        echo " Entre com o comando seguido dos nomes dos arquivos de "
        echo " entrada (.vob) e saida (.avi)"
        echo " ex:"
        echo " "
        echo "   ./converte.sh arquivo.vob arquivo.avi"
        echo " "
    fi

    if [ $2 ]; then
        echo "Os arquivos sao $1 e $2"

        ffmpeg -i $1 -f avi -vcodec mpeg4 -b 800k -g 300 -bf 2 $2
        
    fi

else
    clear
    echo 'Entre com o nome do arquivo de entrada (*.vob)'
    read ENTRADA
    echo 'Entre com o nome do arquivo de saida (*.avi)'
    read SAIDA

    ffmpeg -i $ENTRADA -f avi -vcodec mpeg4 -b 800k -g 300 -bf 2 $SAIDA

fi
