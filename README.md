# Comandos y Scripts para distribuciones Ubuntu/Debian (SHELL)

## ¡Bienvenidos! :D

![Hands-on-Introduction-to-Linux_Final](https://user-images.githubusercontent.com/48606307/212501298-04f89397-760b-435f-b533-ce23b1d54967.png)


En este repositorio Open Source se podran encontrar archivos ejecutables para automatizacion de tareas, ademas de la
explicacion de los comandos utilizados para distintas operaciones que se pueden hacer en distribuciones 
Linux/GNU Linux basadas en Ubuntu o Debian.

La idea es ayudar tanto a las personas que recien comienzan a utilizar Linux como a las personas avanzadas para la automatizacion de tareas rutinarias,
complejas o repetitivas.

### Cualquier persona con deseo de colaborar con este proyecto, sientase libre de poder hacerlo :D










## Para ejecutar un script

1 - Se debe posicionar en el directorio de dicho archivo

    cd Directory/
  
2 - Ingrese por terminal el nombre el archivo ejecutable anteponiendo './', presione enter y el archivo se ejecutara

    ./[FILE_NAME].sh
  
    Ej: ./hola.sh

**Observacion:** Debe asegurarse de que tenga los permisos de ejecucion (x) correspondiente para poder ejecutar el archivo
    
    ls -l ./[FILE_NAME].sh
    
    Ej:
    
    ls -l hola.sh
    
    -> Output:
    
    -rwxrwxrwx 1 leonel leonel 669 ene  6 22:05 hola.sh
    
    r (read) - w (write) - x (execution)
En caso de que no los obtenga ejecute el siguiente comando
    
    sudo chmod a+x ./[FILE_NAME].sh
    
    Asigno permiso de ejecucion del archivo a todos los usuarios 
    
    
    
3 - **(OPCIONAL)** Si desea ejecutar el archivo con una simple palabra, puede hacerlo bajo un alias ya sea temporal o permanente, en este caso explicare como es el caso del alias permanente, ya que el alias temporal solo funcionara siempre que la sesion del usuario este activa.


Para agregar un alias debera editar el archivo /home/$USER/.bash_aliases, para ello tiene dos opciones:


	1 - Ir al directorio del archivo .bash_aliases y editarlo:
	
		nano /home/$USER/.bash_aliases
		
		Y debe agregar un alias personalizado teniendo en cuenta el directorio donde se encuentra el script
		
		En este caso suponemos que se encuentra en el directorio de documentos del usuario 
		
		alias hola="bash /home/user/Documents/hola.sh"
 
	2 - Abrir la terminal y escribir el siguiente comando
	
		echo "alias hola="bash /home/user/Documents/hola.sh" >> /home/$USER/.bash_aliases
	
	Esto lo que hara es redireccionar la salida al archivo /home/$USER/.bash_aliases agregando el alias desde la ultima linea que posea el archivo
	
	
	Una vez que hayas agregado la línea de alias a tu archivo de configuración de la shell, puedes cargar los cambios de la configuración actual de la shell con el siguiente comando:
	
		source ~/.bashrc


Ya con esto para utilizar el alias "hola", simplemente escribe "hola" en la terminal y presiona enter. Esto ejecutará el comando "bash" en el directorio "/home/user/Documents/hola.sh" y se ejecutara el script que se encuentra en ese directorio. Por lo tanto, no necesitas escribir la ruta completa cada vez que quieras ir al directorio y ejecutar el script. En lugar de eso, solo necesitas escribir el alias "hola" en este caso.
		
		  
