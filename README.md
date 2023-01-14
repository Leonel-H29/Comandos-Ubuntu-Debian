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
