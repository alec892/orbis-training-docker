.PHONY: build

build:
	docker build -t alec892/orbis-training-docker:1.0.0 .

push:
	make login
	@docker push alec892/orbis-training-docker:1.0.0

up:
	@docker-compose up

login:
	@docker login