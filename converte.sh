#!/bin/bash
# -*- coding: utf-8 -*-
# Converte vob para avi

if [ $1 ] && [ $2 ]; then

echo "Os arquivos sao $1 e $2"

ffmpeg -i $1 -f avi -vcodec mpeg4 -b 800k -g 300 -bf 2 $2

else
echo 'Entre com o nome do arquivo de entrada (*.vob)'
read ENTRADA
echo 'Entre com o nome do arquivo de saida (*.avi)'
read SAIDA

ffmpeg -i $ENTRADA -f avi -vcodec mpeg4 -b 800k -g 300 -bf 2 $SAIDA

fi
