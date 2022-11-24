#!/bin/bash

hours=$`date +%H`
if (("$hours" >= "06")) && (("$hours" <= "12"))
then
	echo -e "Bom dia!"
elif (("$hours" > "12")) && (("$hours" < "18"))
then
	echo -e "Boa tarde!"
else
	echo -e "Boa noite!"
fi