#!/bin/bash

######COMANDOS PARA INSTALAR DOCKER EN DEBIAN 11#####


#Este comando actualiza la lista de paquetes disponibles en los repositorios configurados en el sistema.
sudo apt-get update


#Este comando instala los paquetes apt-transport-https, ca-certificates, curl y software-properties-common. 
#La opción -y se utiliza para confirmar automáticamente cualquier pregunta de confirmación durante la instalación.
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y


#Este comando descarga la clave de firma GPG desde https://download.docker.com/linux/debian/gpg y luego la agrega 
#al almacén de claves del sistema usando apt-key add -.
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -


#Este comando agrega el repositorio de Docker al sistema. El argumento "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" 
#especifica la ubicación del repositorio y utiliza la variable $(lsb_release -cs) para obtener el nombre del código de la versión de Debian actual.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"



#Se ejecuta nuevamente apt-get update para actualizar la lista de paquetes después de agregar el repositorio de Docker.
sudo apt-get update



#Este comando instala el paquete docker-ce y docker-compose, que es la versión de Docker Community Edition (CE) para Debian. 
#La opción -y se utiliza para confirmar automáticamente cualquier pregunta de confirmación durante la instalación
sudo apt-get install docker-ce -y
sudo apt-get install docker-compose -y

#Este comando habilita el servicio de Docker para que se inicie automáticamente en el arranque del sistema.
sudo systemctl enable docker


#Este comando agrega al usuario actual 
#($(whoami)) al grupo docker, lo que permite al usuario ejecutar comandos de Docker 
#sin necesidad de usar sudo. 
sudo usermod -aG docker $(whoami)

#El usuario deberá cerrar sesión e iniciar sesión nuevamente para que los cambios surtan efecto.
sudo reboot
