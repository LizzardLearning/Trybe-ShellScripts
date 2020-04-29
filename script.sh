#!/bin/bash

lista=$(ls *.png)

if [ -eq $(wc $lista -l) 0 ]
then
	echo "Sem"
	exit 1
else
	echo "ok"
fi

for arquivo in $lista
do
	name=$(date +%Y-%m-%d)"-$arquivo"
	$(mv $arquivo $name)
done