.PHONY: all
all: pull build

.PHONY: build
build:
	docker build . -t karlvr/package-apt

.PHONY: pull
pull:
	docker pull ubuntu:22.04

.PHONY: push
push:
	docker push karlvr/package-apt

.PHONY: run
run:
	docker run -it --rm karlvr/package-apt bash

.PHONY: run-root
run-root:
	docker run -it --rm --user root karlvr/package-apt bash
