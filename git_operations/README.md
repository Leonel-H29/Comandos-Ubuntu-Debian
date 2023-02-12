# OPERACIONES EN GIT

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
		

		
