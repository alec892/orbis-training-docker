docker build -t alec892/orbis-training-docker .
docker push alec892/orbis-training-docker:0.1.0
docker tag alec892/orbis-training-docker:0.1.0 alec892/orbis-training-docker:0.2.0
