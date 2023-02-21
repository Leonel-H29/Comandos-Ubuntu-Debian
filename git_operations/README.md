# OPERACIONES EN GIT

## Agregar todos los cambios realizados en todos los archivos

Si estas seguro de querer subir todas las modifidicaciones realizadas en todos los archivos se debe escribir el siguiente comando :

		git add .

Este comando me indica que se agregan todos los archivos que han sido modificados en el directorio

Para realizar el commit existen varias formas, la mas simple consiste en la siguiente

		git commit -m "Nueva modificacion ..."

Con este comando creo el commit y la opcion '-m' permite agregar en mensaje en la misma linea

Para ver si se ha creado el commit, la forma mas comun es escribir:

		git log

Con este comando se muestran todos los commits realizados en la rama, el que se encuentra al principio es el ultimo realizado.


Antes de subir los cambios debe saber en que rama esta ubicado, una forma de saberlo es utilizando
		
		git branch

Aparecera un listado con todas las ramas creadas, la que tenga un '*' anteponiendo el nombre es la rama actual. Otra forma es utilizando: 

		git branch --show-current

Esta opcion permite mostrar solo el nombre de la rama actual. Finalmente, ya sabiendo en que rama esta parado, podra subir los cambios ingresando

		git push origin [nombre de la rama]


		Ej: git push origin master



		Tambien puede utilizar la salida que devuelve el comando anteriormente explicado de la siguiente forma:

		
		git push origin $(git branch --show-current)


 
## Eliminacion de los tags

Para realizar la eliminacion de los tags que tengamos de manera local como remota deberemos realizar lo siguiente:

Para ver los tags disponibles

		git tag

Para eliminar un tag de forma local

		git tag -d [tag]
		
		Ej: git tag -d v1.0.0


Para eliminar un tag de forma remota

		git push ---delete origin [tag]
		
		Ej: git push --delete origin v1.0.0
		

		
