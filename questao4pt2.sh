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