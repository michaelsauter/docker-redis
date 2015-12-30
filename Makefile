TAG ?= 3.0.5
VERSION ?= 3.0.5-r1

build: Dockerfile
	docker build --build-arg redis_version=$(VERSION) -t michaelsauter/redis:$(TAG) .
	docker tag -f michaelsauter/redis:$(TAG) michaelsauter/redis:latest
