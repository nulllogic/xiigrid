.PHONY: help build docs dist watch clear

CURRENT_DIR := $(PWD)

help:
	@echo "[ENV SETUP]"

dist:
	@echo "[Compiling SCSS files and minifying]"
	npm run css && npm run minify

clear:
	@echo "[Cleaning old Docker images]"
	docker rmi -f $(docker images -f "dangling=true" -q)

watch:
	@echo "[Watching for changes]"
	docker run --init --rm -it -v $(CURRENT_DIR)/:/app xiigrid --watch ./scss/xiigrid.scss ./dist/css/xiigrid.css

build:
	@echo "[Building Docker image]"
	docker build --build-arg SASS_VERSION=1.69.5 -t xiigrid .