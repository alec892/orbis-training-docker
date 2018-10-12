docker build -t alec892/orbis-training-docker .
docker push alec892/orbis-training-docker:0.1.0
docker tag alec892/orbis-training-docker:0.1.0 alec892/orbis-training-docker:0.2.0
docker run -p 0.0.0.0:1080:80 alec892/nginx:1.0.0
docker-compose build 
docker-compose up -d

docker run -i --rm -v=$(pwd):/app -w=/app  alec892/orbis-training-docker:1.0.0 npm install

docker run -i --rm -v=$(pwd):/app -w=/app -p 3030:3030 -p 35729:35729 alec892/orbis-training-docker:1.0.0 npm start 