#!/bin/bash
if [PARAMETRO]
then
echo "Sintaxe: $0 dir_src dir_dst"
exit 1
fi
src="$1"
dst="$2"
if [ ! -d $src ]
then
echo "Diretório de origem invalido ($src)"
exit 1
fi
if [ ! -d $dst ]
then
echo "Diretório de destino invalido ($dst)"
exit 2
fi
if [ "$dst" = "$src" ]
then
echo "Diretório de destino e source devem ser diferente"
exit 3
fi
nome="BKP-"$(date +"%F")".tar.gz"
tar cvzf "$dst/$nome" "$src"