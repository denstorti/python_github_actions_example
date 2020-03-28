DOCKER_COMPOSE_PYTHON = docker-compose run --rm python bash
DOCKER_COMPOSE_AWS = docker-compose run --rm aws
BUCKET_NAME ?= python-github-actions-example

.EXPORT_ALL_VARIABLES: # need for setting default values

all: build package run

build: clean 
	${DOCKER_COMPOSE_PYTHON} ./scripts/build.sh

package:
	${DOCKER_COMPOSE_PYTHON} ./scripts/package.sh

publish:
	${DOCKER_COMPOSE_AWS} ./scripts/publish.sh

run: package
	${DOCKER_COMPOSE_PYTHON} ./scripts/run.sh

shellPython: 
	${DOCKER_COMPOSE_PYTHON}

shellAWS: 
	${DOCKER_COMPOSE_AWS}

_build:
	./scripts/build.sh

clean:
	-rm -rf output/ venv/
