.DEFAULT_GOAL := help

run: ## Run bot - local
	@./bin/hubot

run-discord: ## Run bot - servers (connects to discord server)
	@./bin/hubot -a discord	

deploy: ## deploy to heroku
	@git push heroku master

.PHONY: help
help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'