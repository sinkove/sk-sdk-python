# Makefile for python projects

# Include .env if file exists
-include .env.dev
export $(shell sed 's/=.*//' ".env.dev" 2> /dev/null)

-include .env
export $(shell sed 's/=.*//' ".env" 2> /dev/null)

include ./rules/Makefile.*

# Define variables
SHELL := /bin/bash -o pipefail

.PHONY: run
run: python-run

.PHONY: test
test: python-test

.PHONY: setup
setup: pip-install-project

.PHONY: clean
clean: python-clean

.PHONY: build
build: python-build

.PHONY: deploy
deploy: python-deploy

.PHONY: cobertura
cobertura: python-cobertura
