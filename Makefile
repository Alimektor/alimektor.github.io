.PHONY: all docker run help

all: docker run

docker: ## Build docker image
	$(info "Building docker image...")
	docker build \
	-t alimektor/alimektor.github.io:latest \
	--build-arg HUGO_BASEURL=http://localhost:1338 \
	.
	$(info "Built docker image...")

run: ## Run docker image
	$(info "Running docker image...")
	@echo -e "\033[0;32mGo to http://localhost:1338\033[0m"
	docker run -p 1338:80 alimektor/alimektor.github.io:latest
	$(info "Ran docker image successfully...")

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s \033[1;33m%s\033[0m\n", $$1, $$2}'
