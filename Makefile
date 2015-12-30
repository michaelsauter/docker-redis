TAG ?= 3.0.5

build: Dockerfile
	docker build -t michaelsauter/redis:$(TAG) .
	docker tag -f michaelsauter/redis:$(TAG) michaelsauter/redis:latest
