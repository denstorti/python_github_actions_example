DOCKER_COMPOSE_PYTHON = docker-compose run --rm python bash

all: build package run

build: clean
	${DOCKER_COMPOSE_PYTHON} ./scripts/build.sh

package:
	${DOCKER_COMPOSE_PYTHON} ./scripts/package.sh

run:
	env FLASK_APP=src/app.py flask run

_build:
	./scripts/build.sh

clean:
	-rm -rf output/ venv/
