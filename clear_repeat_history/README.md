# Eliminar comandos duplicados en el historial

Este script permitira al usuario poder eliminar los comandos duplicados del historial (/home/$USER/.bash_history). El proposito es reducir el contenido del archivo de los comandos que el usuario utiliza diariamente en su trabajo, tambien la ventaja de facilitar la busqueda de un comando especifico en dicho archivo.


## Aclaracion

Si hay comandos erroneros en .bash_history, o tambien si hay 2 o mas comandos que realicen la misma tarea pero estan escritos en diferente orden, entonces este script no podra eliminarlos

		Por ejemplo:
		
		python3 manage.py makemigrations User Capitulos Actor Temporadas
		python3 manage.py makemigrations Capitulos Actor Temporadas User

		
		Estos dos comandos realizan el mismo trabajo pero estan escritos en diferente orden	
		 
