TAG ?= 3.0.2

build: Dockerfile
	docker build -t michaelsauter/redis:$(TAG) .
	docker tag -f michaelsauter/redis:$(TAG) michaelsauter/redis:latest
