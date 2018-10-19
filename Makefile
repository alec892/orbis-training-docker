include makefiles/deploy-ghpages.mk

NAME_IMAGE ?= alec892/orbis-training-docker
DOCKER_TAG ?= 1.0.0
DOCKER_IMAGE ?= $(NAME_IMAGE):$(DOCKER_TAG)
NAME ?= Angelo Huaraca

project-workspace:
	docker create -v /app/ --name workspace alpine
	docker cp ./ workspace:/app

install: 
	docker run --rm --volumes-from workspace -w /app $(DOCKER_IMAGE) npm install

start:
	docker run --rm -d --volumes-from workspace -w /app -p 1042:1042 -p 35729:35729 $(DOCKER_IMAGE) npm start

release:
	docker run --rm --volumes-from workspace -w /app $(DOCKER_IMAGE) npm run release

greet:
	@docker run --rm --volumes-from workspace -w /app --entrypoint ./resources/example.sh -e nombre="${NAME}" $(DOCKER_IMAGE)

saludo:
	@echo 'hola recursos!'