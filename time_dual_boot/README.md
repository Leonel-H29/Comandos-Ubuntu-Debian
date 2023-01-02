# Configurar la hora al tener Dual Boot

## Problema 

Cuando en nuestro equipo tenemos instalados 2 sistemas operativos diferentes, en este caso Windows y Linux con Dual Boot, uno de los problemas que pueden surgir es
la no coincidencia de la hora cuando pasamos de un sistema operativo al otro.

Esto se debe a que cada sistema operativo tiene su propia forma para poder almacenar la hora. En resumidas cuentas, Linux fija la hora de manera automática en base al estándar UTC y 
fuerza la sincronización de la hora local del hardware, es decir, la que marca la BIOS en la placa base; mientras que Windows lo hace al revés: utiliza la hora local y aunque existe 
la posibilidad de sincronizar mediante UTC, no es una función que esté habilitada por defecto en el sistema.


Dicho con otras palabras, Linux toma la hora exacta de Internet y ajusta la hora local en consonancia, facilitando la labor al usuario. Windows, por su parte, realiza una sincronización 
de la hora durante el proceso de instalación del sistema y a partir de ahí, utiliza la hora local para lo propio. Hay razones para hacerlo así, según Microsoft, pero lo cierto es que han 
quedado un poco desfasadas.


## Como resolver este problema

Existe 2 maneras de resolver este problema, una para Windows y otra para Linux. 

   1- Indicarle a Windows que guarde en el formato de Linux (UTC)
   
   2- Indicarle a Linux que guarde en el formato de Windows (Local)


Solo hay que asegurarse en hacer un solo procedimiento una sola vez en un solo sistema operativo, ya que si realizas ambos el problema no sera resuelto.


En este caso se hara el segundo ya que es el mas sencillo, para ello lo puede hacer manualmente, siguiendo a pie los comandos que aparecen el archivo o ejecutar el archivo

    ./time_win_linux.sh
    
    Aclaracion: En caso de que este utilizando una distribucion basada en Debian debera asegurarse de que tenga instalado 'sudo', ya que sino no podra ejecutar el archivo
    a no ser que lo edite.

El comando

    sudo timedatectl set-local-rtc 1
    
   Sirve para indicarle a Linux que guarde la hora en el formato Local que es el que utiliza Windows

