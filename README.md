# Comandos Ubuntu-Debian

Para ejecutar un script

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
