# Llaves SSH

## ¿Para que nos sirven?

El protocolo SSH proporciona un método seguro de entrar en un servidor privado virtual mediante
el uso de un usuario y una contraseña. El problema de este sistema es que la contraseña podría ser
capturada alguien, lo que pondría en riesgo la información que tengamos. La importancia de usar
llaves SSH, es que al contrario que las contraseñas, es casi imposible descifrarlas.
La llave SSH consiste en la generación de un par de claves que proporcionan dos largas cadenas de
caracteres —una pública y una privada—. La clave pública se instala en cualquier servidor y luego
se desbloquea mediante la conexión con un cliente que hace uso de la clave privada. En el caso de
que las dos claves coincidan, el sistema permite el acceso sin necesidad de tener que utilizar
ninguna contraseña.
Si queremos mejorar aún más la seguridad, siempre podemos aumentar la protección de la clave
privada con el uso de una contraseña, y lo más recomendable es que crear contraseñas seguras.


# Creacion de la llave

Si esta en su maquina, para la autenticación y la configuración de la conexión, deberá generar un
par de llaves ssh en el terminal mediante el siguiente comando:

		ssh-keygen -t rsa


# Conexión entre servidores con claves SSH

Almacenar las claves y la contraseña
Una vez que hayamos ejecutado la instrucción para generar las claves, nos realizarán algunas
preguntas.

		Enter file in which to save the key (/home/username/.ssh/id_rsa):

Primero nos preguntarán en qué ruta queremos almacenar la clave. Si no escribimos nada y
pulsamos la tecla «Intro», la clave se almacenará en la ruta que aparece entre paréntesis.

		Enter passphrase (empty for no passphrase)

La segunda pregunta será si queremos incluir una contraseña. Si no queremos hacerlo, podemos
dejarla en blanco. Pero si optamos por indicar una contraseña, estaremos mejorando aún más la
seguridad, ya que añadiríamos una capa más. De modo que aunque alguien consiguiera la clave, no
podrían hacer uso de ella mientras no tenga la contraseña. El único inconveniente es que habría que
escribirla cada vez que se utilice.


Almacenar las claves y la contraseña Deberíamos ver en pantalla algo parecido a esto:


sh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/ricardo/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/ricardo/.ssh/id_rsa.
Your public key has been saved in /home/ricardo/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:uY4tYpRCgN05mfWtIvDsayoitge4cjNR2JdIEA1euSg ricardo@debian-Stretch
The key's randomart image is:
+---[RSA 2048]----+
|..+*.*.
|
|o...X . .
|
| .o= + .. .
|
|E ++= o o
|
|.o .+o. S
|
|..o.o. . .
|
| ..+. .
|
|*.+.+..+
|
|=++*....o
|
+----[SHA256]-----+



La clave pública se guardará en «/home/username/.ssh/id_rsa.pub», mientras que la clave privada lo
hará en «/home/username/.ssh/id_rsa».
