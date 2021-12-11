BUILD_COMMIT := $(shell git rev-parse --short HEAD 2> /dev/null)

build:
	crystal ./bin/generate

docs:
	crystal ./bin/gen_docs.cr

.PHONY: build docs