IMAGE=jpbochi/local-dynamodb

all: rebuild tag push

build:
	docker build -t ${IMAGE} .

rebuild:
	docker build --no-cache -t ${IMAGE} .

tag:
	docker tag ${IMAGE} ${IMAGE}:$$(docker run --rm ${IMAGE} dynamodb-version | fmt)

push:
	docker push ${IMAGE}:$$(docker run --rm ${IMAGE} dynamodb-version | fmt)
	docker push ${IMAGE}:latest
