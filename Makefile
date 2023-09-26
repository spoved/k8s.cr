BUILD_COMMIT := $(shell git rev-parse --short HEAD 2> /dev/null)
SPEC_ARGS := --exclude-warnings $(shell crystal env CRYSTAL_LIBRARY_PATH) --error-trace --exclude-warnings src/k8s/internals/hash_object.cr
help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z \-_0-9]+:.*?## / {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

gen: ## Generate k8s resources
	crystal ./bin/generate.cr

docs: ## Generate docs
	crystal ./bin/gen_docs.cr

spec: ## Run spec
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.11
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.12
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.13
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.14
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.15
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.16
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.17
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.18
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.19
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.20
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.21
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.22
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.23
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.24
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.25
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.26
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.27
	@crystal spec ${SPEC_ARGS} -Dk8s_v1.28

sentry: ## Compile sentry
	@crystal build --release -o ./bin/sentry ./lib/sentry/src/sentry_cli.cr

watch: ## Watch for changes and rebuild automatically
	@bin/sentry

.PHONY: gen docs spec help sentry