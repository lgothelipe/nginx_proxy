# Makefile
.PHONY: build deploy stop clean

build:
	docker-compose build

deploy: build
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down -v --rmi all --remove-orphans