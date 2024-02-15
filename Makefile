.PHONY: build run clean test

# Default target
all: build

build:
	docker-compose build

run:
	docker-compose up -d

clean:
	docker-compose down

test:
	docker-compose exec robot robot /tests

robot:
	robot --outputdir reports .
