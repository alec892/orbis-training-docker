docker build -t alec892/orbis-training-docker .
docker push alec892/orbis-training-docker:0.1.0
docker tag alec892/orbis-training-docker:0.1.0 alec892/orbis-training-docker:0.2.0
docker run -p 0.0.0.0:1080:80 alec892/nginx:1.0.0
docker-compose build 
docker-compose up -d

docker run -i --rm -v=$(pwd):/app -w=/app  alec892/orbis-training-docker:1.0.0 npm install

docker run -i --rm -v=$(pwd):/app -w=/app -p 3030:3030 -p 35729:35729 alec892/orbis-training-docker:1.0.0 npm start 

docker run -i --rm -v=$(pwd):/app -w=/app -p 1042:1042 -p 35729:35729 alec892/orbis-training-docker:1.0.0 npm start

docker run -i --rm -v=$(pwd):/app -w=/app alec892/orbis-training-docker:1.0.0 npm run release

docker run --rm -v=$(pwd):/app -w=/app --entrypoint="./resources/example.sh" -e "nombre=Leo" alec892/orbis-training-docker:1.0.0

docker run --rm -w=/ --entrypoint=/bin/echo alec892/orbis-training-docker:1.0.0 Ejecutando contenedor...

¿Qué significa el comando -d?
Verifica si existe el directorio 

¿Porqué la sentencia comienza con @?
Para que no se muestre la sentencia que se ejecuta en la consola

¿Para qué sirve el comando mkdir?
Para crear un directorio

Explicar lo que hace la función mkdir_deploy_dir

Se compruebe que exista el directorio deploy/gh-pages en nuestro ubicación actual, si no existe entonces la crea

¿Para qué sirve el uso de \?
Para indicar continuación de la sentencia después de un salto de línea

¿Para qué sirve el uso de &&?
Para concatenar la ejecucion de otro comando

¿Qué función cumple usar los argumentos -rf?
-r es para que sea recursivo y -f es para que sea forzado.

Explicar lo que hace la función git_init (linea por linea)
Primero se ubica en el directorio deploy/gh-pages, luego borra forzado y recursivo la carpeta .git y finalmente inicializa git dentro de la carpeta.

¿Para qué sirve el uso de eval?
Sirve para setear un valor a una variable

¿Para qué sirve el uso de shell?
Para poder ejecutar comandos shell

¿Para qué sirve el uso de git log --pretty=format:"%an"?
Para mostrar solo el nombre del autor de todos los commits

¿Cuál es la diferencia en usar git config y git config --global?
git config solo es para proyecto actual y git config --global usa las variables para todos los proyectos en la pc.

Explicar lo que hace la función git_config (línea por línea)
se le asigna a la variable GIT_USER_NAME el nombre del autor del último commit
se le asigna a la variable GIT_USER_EMAIL el correo del autor del último commit
Nos ubicamos en deploy/gh-pages y le seteamos a las variables de configuración user.email y user.name el valor de GIT_USER_EMAIL y GIT_USER_NAME respectivamente.

Para qué sirve el uso de awk?
es un lenguaje de programación que está diseñado para procesar datos basado en texto

¿Para qué sirve el uso de sed?
es un editor de flujos y ficheros de forma no interactiva.Permite modificar el contenido de las diferentes líneas de un fichero en base a una serie de comandos o un fichero de comandos

¿Para qué sirve el uso de git log --pretty=format:"%an"?
Para mostrar solo el nombre del autor de todos los commits

Explicar lo que hace la función git_add_remote_repository
Primero se obtiene el nombre del repositorio origin que hace push
Luego, se busca el protocolo https en el nombre del repositorio  y se reemplaza por https:// más un token.
Luego, nos ubica en deploy/gh-pages y se agrega el nuevo repositorio origin


Explicar lo que hace la función create_branch_gh_pages 
TE ubica en el directorio deploy/gh-pages y crea la rama gh-page y te mueve a ella

Explicar lo que hace la función copy_files_to_deploy
copia todos los archivos de deploy/build al directorio gh-page


Explicar lo que hace la función git_add 
Se posiciona en el directorio deploy/gh-pages y se agregar los cambios para ser commiteados y se muestra el estado de los archivos en el directorio

Explicar lo que hace la función create_commit (línea por línea)
Se setea en la variable MESSAGE el mensaje del último commit
Se ubica en deploy/gh-pages y se hace un commit con el mensaje que tiene MESSAGE.

Explicar lo que hace la función git_push (línea por línea)
Hace el push forzado en el directorio deploy/gh-pages al repositorio gh-pages

Explicar lo que hace la función clean_workspace
Elimina recursivamente y forzado la carpeta deploy/gh-pages

¿Para qué sirve el uso de ifeq?
ES una condiiconal que evalua si el primer y segundo argumento son iguales, de ser iguales ejecuta la primera sentencia sino la segunda sentencia

¿Para qué sirve el uso de strip?
Quita los espacios al inicio y al final del texto

Explicar lo que hace la función show_deploy_url (línea por línea)
Linea 1: retorna el repositorio remoto de git q se encuentra en la maquina
Linea 2: retornar el repositorio remoto de git pero el q se usa para operaciones con ssh
Linea 3: compara el repositorio remoto shh con una cadena vacia
Linea 4: retorna el nombre de usuario del repositorio remoto ssh
Linea 5: retorna el nombre de usuario del repositorio remoto
Linea 6: compara el repositorio remoto shh con una cadena vacia
Linea 7: retorna el nombre del repositorio del repositorio remoto shh
Linea 8: retorna el nombre del repositoio del repositorio remoto https
Linea 9: impreme ""
Linea 10: Imprime la ruta donde se publicara el repositorio
Linea 11: imprime "" 


¿Que sucede si no volumeo el docker.sock?
no puedo usar docker engine desde el contenedor de jenkins

¿Para que sirve el volumen var/jenkins_home?

¿Puedo cambiar de puerto?
si

¿Que pasa si no utlizo el usuario root?

¿Còmo instalo make en una imagen?
RUN apk add --update make
















