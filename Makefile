# Make will use bash instead of sh
SHELL := /usr/bin/env bash
ROOT := ${CURDIR}

.PHONY: help
help:
	@echo 'Usage:'
	@echo '    make create     Create or update GCP resources.'
	@echo '    make deploy     Deploy app to GKE'
	@echo '    make teardown   Destroy all GCP resources.'

.PHONY: plan
plan:
	@$(ROOT)/scripts/plan.sh

.PHONY: create
create:
	@$(ROOT)/scripts/create.sh

.PHONY: deploy
deploy:
	@$(ROOT)/scripts/deploy.sh

.PHONY: teardown
teardown:
	@$(ROOT)/scripts/destroy.sh