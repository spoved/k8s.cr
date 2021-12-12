BUILD_COMMIT := $(shell git rev-parse --short HEAD 2> /dev/null)

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z \-_0-9]+:.*?## / {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

gen: ## Generate k8s resources
	crystal ./bin/generate

docs: ## Generate docs
	crystal ./bin/gen_docs.cr

spec: ## Run spec
	@crystal spec -Dk8s_v1.11
	@crystal spec -Dk8s_v1.12
	@crystal spec -Dk8s_v1.13
	@crystal spec -Dk8s_v1.14
	@crystal spec -Dk8s_v1.15
	@crystal spec -Dk8s_v1.16
	@crystal spec -Dk8s_v1.17
	@crystal spec -Dk8s_v1.18
	@crystal spec -Dk8s_v1.19
	@crystal spec -Dk8s_v1.20
	@crystal spec -Dk8s_v1.21
	@crystal spec -Dk8s_v1.22
	@crystal spec -Dk8s_v1.23

.PHONY: gen docs spec help