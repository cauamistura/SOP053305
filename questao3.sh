#!/bin/bash

echo "Digite o primeiro número:" 
    read wN1
echo "Digite o segundo número:"  
    read wN2

echo "Operação:"
echo "1 - Somar "
echo "2 - Subtrair "
echo "3 - Multiplicar "
echo "4 - Dividir "
  read wOperacao

if   [ $wOperacao -eq 1 ];   then
  wResult=$[wN1+wN2]
elif [ $wOperacao -eq 2 ]; then
  wResult=$[wN1-wN2]
elif [ $wOperacao -eq 3 ]; then
  wResult=$[wN1*wN2]
elif [ $wOperacao -eq 4 ]; then
  wResult=$[wN1/wN2]
else
  echo "Falha."
fi

echo "wResult: $wResult"