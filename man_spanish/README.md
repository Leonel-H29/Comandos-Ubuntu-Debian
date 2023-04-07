# PONER LAS PÁGINAS MAN EN ESPAÑOL

En este directorio se presentaran alternativas para poder traducir el manual 'man' del Ingles al Español


## 1) - manpages-es 

Si queremos obtener las instrucciones en Español hay que instalar los paquetes manpages-es y manpages-es-extra. Para ello tenemos que 
ejecutar el siguiente comando en la terminal:

    sudo apt-get install manpages-es manpages-es-extra

Una vez instalados los paquetes tenemos que actualizar la configuración regional del sistema para poder ver las páginas man en Español. 
Para ello ejecutamos el siguiente comando en la terminal:

    sudo dpkg-reconfigure locales
    
En el momento de ejecutar el comando les aparecerá la siguiente ventana informativa. Cuando aparezca únicamente hay que presionar 
encima de la opción Aceptar.

  ![image](https://user-images.githubusercontent.com/48606307/210575981-f177dfb2-9d80-40f0-a662-9e3bfe3ef266.png)
  *Imagen ilustrativa*
  
  

A continuación tendremos que seleccionar la configuración regional que deseamos generar. En mi caso soy Argentino y vivo en Argentina, 
por lo tanto aseguro que esté seleccionada la opción ar_es.UTF-8 UTF-8.

  ![image](https://user-images.githubusercontent.com/48606307/210576039-bb3ddabc-a976-4aa4-bc3a-733e08975709.png)
  *Imagen ilustrativa*


Una vez generada la configuración regional la tenemos que aplicar. Para ello en la siguiente ventana seleccionaremos la configuración 
regional que queremos aplicar a nuestro sistema. En mi caso selecciono la configuración regional que acabo de crear y que es la ar_ES_UTF-8.

  ![image](https://user-images.githubusercontent.com/48606307/210576141-194ea3a5-e4bb-4d6f-a0bf-d6da451f56a0.png)
  *Imagen ilustrativa*

Después de seguir estos simples pasos ya dispondremos de las páginas man Español. Por lo tanto si volvemos a ejecutar el siguiente comando:

    man grep
Veremos que ya tenemos el contenido de las páginas man en Español.



## ACLARACION

1. Existen muchas paginas en las que no se pueden traducir al Español
2. Existen otras en las que se pueden encontrar obsoletas o contienen errores


## 2) translate-shell

Para instalar translate-shell, puede usar el siguiente comando:


		sudo apt-get install translate-shell

Si está utilizando otra distribución de Linux, consulte la documentación de su sistema operativo para obtener instrucciones sobre cómo instalar estas herramientas.


Luego la linea
		trans -f en -t es "$manES"
		

Permitira traducir el contenido del manual de un comando especifico, y al final mostrara por pantalla el texto original y el traducido


	Por ejemplo aca busco el manual del comando 'clear'
	
	





### CONSEJO

Si dominan el inglés es mejor que no utilicen las páginas en Español.


Fuente: https://geekland.eu/poner-paginas-man-en-espanol-en-linux/#:~:text=En%20el%20momento%20de%20ejecutar,configuraci%C3%B3n%20regional%20que%20deseamos%20generar
