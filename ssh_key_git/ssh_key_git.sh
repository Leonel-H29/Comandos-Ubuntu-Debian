#!/bin/bash

echo "Creando clave ssh."
ssh-keygen -t rsa

read -t 3 -p "Espere unos segundos..."

dir="/home/$USER/.ssh/"
#echo $dir
let count=$(ls $dir | grep 'id_rsa' | wc -l)
#echo $count

if [ $count = 2 ]; then
	echo -e "\nClaves creadas en $dir\n"
	read -t 5 -p "Mostrando la clave publica..."
	echo -e "\n"
	cat $dir"id_rsa.pub"
	echo -e "\n\n--Copie esta clave en GitHub|GitLab|Bitbutcket antes de continuar--"
	
	echo -e  "\n[Pulse cualquier boton para continuar]:"
	read x
	read -t 3 -p "Iniciando agente ssh..."
	eval $(ssh-agent -s)
	read -t 3 -p "Agregando clave..."
	ssh-add $dir"id_rsa"
	echo -e "\nFINISHED!"
else
	echo -e "\aError al crear las claves"
fi




