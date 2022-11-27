-- 1
#!/bin/bash
x=1
while [$x -lt 10]; 
do
    echo $x
    x=$(($x + 1)) 
done

for i in 1 2 3 4 5 6 7 8 9; do 
    echo $i 
done 

-- 2
chmod 777 contaWhile.sh
chmod 777 contaFor.sh

-- 3
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

echo "Result: $wResult"

-- 4.1
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

-- 4.2
#!/bin/bash
echo "Digite um número:"
 read wN
if [ $wN -lt 0 ]; then 
    echo "Número invalido. Digite apenas valores positivos"
else   
    if [ $wN -ge 1 ]; then
        echo "2"
        wP=1
        wY=3
        while [ wP -gt wN ]; then 
        do
            wX=3
            while[ wX -lt wY ]; then
            do
                if [ $[ wY%0 ] -eq 0 ]; then
                    break
                fi
                wX=$[ wX+2 ]
            done
            if[ wX -eq wy ]; then 
                echo $wX
                wP=$[ wP+1 ]
            fi
            y=$[ wY+2 ]
        done
    done
fi

-- 5 

tar -cvf CAUAMISTURA-2022-11-26.tar.gz LEIAME.md