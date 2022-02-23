help: ## Shows this generated help info for Makefile targets
	@grep -E '^[a-zA-Z_-]+:.*?(## )?.*$$' $(MAKEFILE_LIST) | sort | awk '{ if ( $$0 ~ /^[a-zA-Z_-]+:.*?## ?.*$$/ ) { split($$0,resultArr,/:.*## /) ; printf "\033[36m%-30s\033[0m %s\n", resultArr[1], resultArr[2] } else if ( $$0 ~ /^[a-zA-Z_-]+:.*$$/ ) { split($$0,resultArr,/:.*?/);  printf "\033[36m%-30s\033[0m\n", resultArr[1] } } '

build: ## Builds docker image
	docker build -t ruby_2.3.7_docker ./

terminal: ## Opens a terminal for run ruby commands
	docker build -t ruby_2.3.7_docker ./
	docker run -v `pwd`/src:/src -it ruby_2.3.7_docker /bin/bash

version: ## Displays ruby version in the container
	docker build -t ruby_2.3.7_docker ./
	docker run ruby_2.3.7_docker
