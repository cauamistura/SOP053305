#!/bin/bash
npro=$(( $(ps aux | wc -l) -1 ))
echo "$npro processos estão em execução"