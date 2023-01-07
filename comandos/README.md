# Comandos y Archivos


Lista de algunos comandos y configuraciones de archivos que se pueden ejecutar en cualquier distribucion basada en Ubuntu o Debian

- Para ver todo el contenido ingrese

           cat comandos.txt


- Para buscar un comando
    
    - Para ver la informacion de un comando especifico, ingrese por consola

            grep -ri [clave] comandos.txt
    
    Ejemplo:
    
    ![Screenshot from 2023-01-02 11-54-11](https://user-images.githubusercontent.com/48606307/210247822-01acfc1a-5528-469c-9caa-733cf0d2f999.png)
    
  Lo que hace este comando es mostrar las lineas de texto que coincidan con el patron ingresado que seria el comando que queremos filtrar (en este caso el comando 'cat'), sin diferenciar las mayusculas ni las minusculas.
  
   - Otra opcion seria
   
           cat comandos.txt | grep [clave]
           
   Ejemplo
   
   ![Captura de pantalla de 2023-01-07 11-05-54](https://user-images.githubusercontent.com/48606307/211154841-e1a372a1-75c3-4a86-a028-da43043dbece.png)

   
   Utilizando tuberias, el contenido del archivo se enviara a la entrada de grep para filtrar las filas que coincidan con dicho comando
  
  
- Para buscar un archivo

    ![Screenshot from 2023-01-02 12-06-23](https://user-images.githubusercontent.com/48606307/210249223-04f9534c-24a6-4b9b-9df2-c57f4e78e225.png)

    Muestra algunos ejemplos de configuraciones que se pueden hacer a dichos archivos, en caso de que dicha informacion pueda encontrarse

    
   

    
    
