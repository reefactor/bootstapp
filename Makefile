SHELL := /bin/bash

build:
	docker compose build

run:
	docker compose up

test-codestyle:
	source venv/bin/activate
	flake8 --statistics --count

test: test-codestyle
	source venv/bin/activate
	bash tests/test.sh

venv:
	python3 -m venv venv

init: venv .dev-requirements

init-debian-bootstrap:
	apt-get install -y python3 python3-dev python3-pip python3-venv
	apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	apt-get install -y bash curl
	python3 -m pip install --upgrade pip

pip-compile:
	source venv/bin/activate
	cd components/backend/
	pip-compile --output-file requirements.txt requirements.txt.app

.ONESHELL:
.dev-requirements:
	source venv/bin/activate
	pip install --upgrade pip
# 	dependencies for running tests and update dependencies
	pip3 install 		\
	flake8==4.0.1     \
	pip-tools==6.13.0  \
	pytest==7.2.1 		> /dev/null
