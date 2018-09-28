docker build -t alec892/orbis-training-docker .
docker push alec892/orbis-training-docker:0.1.0
docker tag alec892/orbis-training-docker:0.1.0 alec892/orbis-training-docker:0.2.0
docker run -p 0.0.0.0:1080:80 alec892/nginx:1.0.0
docker-compose build 
docker-compose up -d
