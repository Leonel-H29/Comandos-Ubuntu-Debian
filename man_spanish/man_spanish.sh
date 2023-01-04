#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

#PONER LAS PÁGINAS MAN EN ESPAÑOL

#Si queremos obtener las instrucciones en Español hay que instalar los paquetes manpages-es y manpages-es-extra. 
#Para ello tenemos que ejecutar el siguiente comando en la terminal:
sudo apt-get install manpages-es manpages-es-extra

#Una vez instalados los paquetes tenemos que actualizar la configuración regional del sistema para poder ver las páginas man en Español. 
#Para ello ejecutamos el siguiente comando en la terminal:
sudo dpkg-reconfigure locales

#En el momento de ejecutar el comando les aparecerá la siguiente ventana informativa. Cuando aparezca únicamente hay que presionar 
#encima de la opción Aceptar.
#A continuación tendremos que seleccionar la configuración regional que deseamos generar. En mi caso soy Argentino y vivo en Argentina, 
#por lo tanto aseguro que esté seleccionada la opción ar_es.UTF-8 UTF-8.


#Una vez generada la configuración regional la tenemos que aplicar. Para ello en la siguiente ventana seleccionaremos la configuración 
#regional que queremos aplicar a nuestro sistema. En mi caso selecciono la configuración regional que acabo de crear y que es la ar_ES_UTF-8.

#Después de seguir estos simples pasos ya dispondremos de las páginas man Español. Por lo tanto si volvemos a ejecutar el siguiente comando:
man grep
#Veremos que ya tenemos el contenido de las páginas man en Español.
