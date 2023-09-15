# Instrucciones de Instalación de GitHub Desktop en Ubuntu | Debian

GitHub Desktop es una aplicación de interfaz gráfica (GUI) desarrollada por GitHub que proporciona una forma más visual y amigable de interactuar con repositorios de Git. Está diseñada para simplificar y agilizar el proceso de colaboración en proyectos de software utilizando Git como sistema de control de versiones.

Algunas de las características principales de GitHub Desktop incluyen:

1. **Gestión Intuitiva de Repositorios**: Permite clonar, crear, modificar y eliminar repositorios con facilidad.

2. **Control de Versiones Visual**: Ofrece una vista clara de los cambios realizados en los archivos y la capacidad de realizar commits de manera sencilla.

3. **Ramas y Fusiones Simplificadas**: Permite crear y gestionar ramas de desarrollo, así como fusionar cambios de manera visual.

4. **Interfaz de Usuario Intuitiva**: Diseño limpio y fácil de usar que facilita la navegación y comprensión de las operaciones de Git.

5. **Integración con GitHub**: Se integra de manera nativa con la plataforma GitHub, permitiendo la publicación y sincronización de repositorios directamente desde la aplicación.

6. **Gestión de Conflictos**: Ayuda a resolver conflictos de fusión de manera visual, facilitando la colaboración en equipo.

En resumen, GitHub Desktop es una herramienta valiosa para aquellos que deseen aprovechar la potencia de Git y GitHub sin necesidad de utilizar la línea de comandos. Facilita la gestión de repositorios y la colaboración en proyectos de desarrollo de software.

El siguiente script de Bash facilita la instalación de GitHub Desktop en Ubuntu o cualquier distribución basada en Debian. Este script realiza los siguientes pasos:

1. **Definición de Variables**:

   ```bash
   directorio="$HOME/.githubdesktop/"
   release="release-3.3.1-linux1"
   file="GitHubDesktop-linux-amd64-3.3.1-linux1.deb"
   ```

   - `directorio`: Es la variable que almacena la ruta al directorio donde se instalará GitHub Desktop. Por defecto, se establece en el directorio `~/.githubdesktop/`.

   - `release`: Es la variable que almacena el nombre de la versión que se descargará. En este caso, es `release-3.3.1-linux1`.

   - `file`: Es el nombre del archivo `.deb` que se descargará. En este caso, es `GitHubDesktop-linux-amd64-3.3.1-linux1.deb`.

2. **Verificación y Creación del Directorio**:

   ```bash
   if ! [ -d "$directorio" ]; then
       mkdir "$directorio"
   fi
   ```

   - Verifica si el directorio `$HOME/.githubdesktop/` existe. Si no existe, crea el directorio.

3. **Descarga del Archivo**:

   ```bash
   if [ -d "$directorio" ]; then
       wget "https://github.com/shiftkey/desktop/releases/download/$release/$file" -O "$directorio$file"
   ```

   - Si el directorio `$HOME/.githubdesktop/` existe, utiliza `wget` para descargar el archivo desde el repositorio de GitHub Desktop.

4. **Instalación de Dependencias**:

   ```bash
   sudo apt-get -f install
   ```

   - Ejecuta el comando `apt-get` para instalar cualquier dependencia necesaria.

5. **Instalación de GitHub Desktop**:

   ```bash
   sudo dpkg -i "$directorio$file"
   ```

   - Utiliza `dpkg` para instalar el archivo `.deb` descargado.

6. **Mensaje en Caso de Error**:

   ```bash
   else
       echo "No se ha podido crear el directorio de forma correcta"
   fi
   ```

   - Si no se pudo crear el directorio correctamente, se imprimirá un mensaje de error.

### Aclaracion

> Ten en cuenta las diferentes versiones del programa y las compatibilidades con la distribucion que estes utilizando, para ello puedes ir al siguiente repositirio [GitHub Desktop](https://github.com/shiftkey/desktop/releases/)

# OPERACIONES EN GIT

## Agregar todos los cambios realizados en todos los archivos

Si estas seguro de querer subir todas las modifidicaciones realizadas en todos los archivos se debe escribir el siguiente comando :

```bash
git add .
```

Este comando me indica que se agregan todos los archivos que han sido modificados en el directorio

Para realizar el commit existen varias formas, la mas simple consiste en la siguiente

```bash
git commit -m "Nueva modificacion ..."
```

Con este comando creo el commit y la opcion '-m' permite agregar en mensaje en la misma linea

Para ver si se ha creado el commit, la forma mas comun es escribir:

```bash
git log
```

Con este comando se muestran todos los commits realizados en la rama, el que se encuentra al principio es el ultimo realizado. Otra altervativa seria ingresar este comando con la opcion '-1':

```bash
git log -1
```

Esta opcion muestra la informacion del ultimo commit realizado

Antes de subir los cambios debe saber en que rama esta ubicado, una forma de saberlo es utilizando

```bash
git branch
```

Aparecera un listado con todas las ramas creadas, la que tenga un '\*' anteponiendo el nombre es la rama actual. Otra forma es utilizando:

```bash
git branch --show-current
```

Esta opcion permite mostrar solo el nombre de la rama actual. Finalmente, ya sabiendo en que rama esta parado, podra subir los cambios ingresando

```bash
		git push origin [nombre de la rama]


		Ej: git push origin master



		Tambien puede utilizar la salida que devuelve el comando anteriormente explicado de la siguiente forma:


		git push origin $(git branch --show-current)
```

## Eliminacion de los tags

Para realizar la eliminacion de los tags que tengamos de manera local como remota deberemos realizar lo siguiente:

Para ver los tags disponibles

```bash
		git tag
```

Para eliminar un tag de forma local

```bash
		git tag -d [tag]

		Ej: git tag -d v1.0.0
```

Para eliminar un tag de forma remota

```bash
		git push ---delete origin [tag]

		Ej: git push --delete origin v1.0.0
```
