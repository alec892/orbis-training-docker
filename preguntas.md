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

¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
Es necesatio para poder interactuar con la terminal del contenedor
¿Para qué sirve ejecutar el comando bash al eejcutar una imagen?
para ejecutar la shell del contenedor

¿Cuál es la diferencia entre docker ps y docker ps -a?
docker ps lista todos los contenedores activos
docker ps -a lista todos los contenedores

docker run -it alec892/orbis-training-docker:0.4.0 bash
