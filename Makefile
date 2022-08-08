BUILD_COMMIT := $(shell git rev-parse --short HEAD 2> /dev/null)

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z \-_0-9]+:.*?## / {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

gen: ## Generate k8s resources
	crystal ./bin/generate.cr

docs: ## Generate docs
	crystal ./bin/gen_docs.cr

spec: ## Run spec
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.11 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.12 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.13 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.14 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.15 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.16 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.17 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.18 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.19 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.20 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.21 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.22 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.23 --error-trace
	@crystal spec --exclude-warnings /usr/local/Cellar/crystal -Dk8s_v1.24 --error-trace

sentry: ## Compile sentry
	@crystal build --release -o ./bin/sentry ./lib/sentry/src/sentry_cli.cr

watch: ## Watch for changes and rebuild automatically
	@bin/sentry

.PHONY: gen docs spec help sentry