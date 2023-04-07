#!/bin/bash

# Obtener la página del manual o ayuda en formato HTML
echo -n "Ingrese el comando: "
read command

echo $command

manES=$(man $command) 


# Traducir el contenido de la página al español
trans -f en -t es "$manES"



