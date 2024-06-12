.DEFAULT_GOAL := all

build:
	docker build -t nginx:latest .

run:
	docker-compose up

all: build run

clean:
	docker-compose down
	docker image rm nginx:latest
