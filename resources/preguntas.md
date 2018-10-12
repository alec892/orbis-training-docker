PREGUNTAS
=========
1. ¿Qué importancia tiene los tags en un proyecto?
son importantes para identificar las versiones de un proyecto
2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
El tag anotado te permite agregar un mensaje
3. ¿Cómo se sube todos los tags de git que hay en mi local?
git push origin --tags
4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
No, solo una vez
5. ¿Qué es y para qué sirve docker?
Es una plataforma Open Source que brinda un estándar para desarrollar, implementar y ejecutar aplicaciones dentro de contenedores
6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
Virtual box instala cada SO visitante y usa un hypervisor para la comunicacion con el hardware. Docker Usa el SO del host para todas los contenedores
7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
Si 
8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
Para identificar a que repositorio de docker hub se subira
9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
se crea por defecto latest
---
¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
Es necesatio para poder interactuar con la terminal del contenedor
¿Para qué sirve ejecutar el comando bash al eejcutar una imagen?
para ejecutar la shell del contenedor

¿Cuál es la diferencia entre docker ps y docker ps -a?
docker ps lista todos los contenedores activos
docker ps -a lista todos los contenedores

docker run -it alec892/orbis-training-docker:0.4.0 bash

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
Una imagen ocupa espacio en disco mientras que un contenedor ocupa espacio en memoria

2. ¿Cómo listo las imágenes que hay en mi computadora?
docker images

3. ¿Cómo salgo de un contenedor de docker?
exit

4. ¿Se elimina el contenedor al salir de ella?
docker run -it --rm alec892/orbis-training-docker:0.4.0 bash

5. ¿Cómo elimino un contenedor?
docker --rmi $IDimagen

6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
-i: Es para ponerlo en modo interactivo y recibir las respuestas a los comandos que se introducen
-t: ES para abrir la terminal 
---
--rm: Es para eliminar el contenedor al salir de él

7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
Creo un contenedor y estand odentro de él, ejecuto el comando ls para ver los archivos que se encuentran en la raíz del contenedor

8. ¿Cómo se comenta una linea de código en Dockerfile?
Con #

1. ¿Qué es NGINX?
ES un servidor web de código abierto, que también se usa como proxy inverso, cache de http y balanceador de carga.

2. ¿Cómo expongo puertos en docker?
Se indica la palabra reservada PORTS y poner el array de puertos, donde se pone puerto local y puerto del contenedor
PORTS:
	- '8080:80'

3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?

docker run -p "0.0.0.0:1080:80". Despues de los dos puntos para especificar los puertos del contenedor  

4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
docker run -p "0.0.0.0:1080:80". El primero es del host el segundo del container
 
