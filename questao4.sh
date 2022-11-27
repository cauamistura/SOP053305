#!/bin/bash
echo "Consumo em Kh:"
    read wConsumo
echo "Tipo da instalação (R, C ou I):"
    read wTipo
if [ "$wTipo" = R ]; then
    if [ wConsumo -ge 500 ] 
    then
    wPreco=0.40
    else 
    wPreco=0.65
    fi
elif [ "$wTipo" = I ]; then
    if [ wConsumo -ge 5000 ] 
    then
    wPreco=0.55
    else 
    wPreco=0.60
    fi
elif [ "$wTipo" = C ]; then
    if [ wConsumo -ge 1000 ]
    then
    wPreco=0.55
    else 
    wPreco=0.60
    fi
else 
wPreco=0
echo "Erro! Tipo de instalação desconhecido!"
wCusto=$[wConsumo*wPreco]
echo "Valor a pagar: R$ $wCusto"
fi
