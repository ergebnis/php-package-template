.PHONY: it
it: cs dependency-analysis stan test ## Runs the cs, stan, and test targets

.PHONY: coverage
coverage: vendor ## Collects coverage from running unit tests with phpunit/phpunit
	mkdir -p .build/phpunit
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --dump-xdebug-filter=.build/phpunit/xdebug-filter.php
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text --prepend=.build/phpunit/xdebug-filter.php

.PHONY: cs
cs: vendor ## Fixes code style issues with php-cs-fixer
	mkdir -p .build/php-cs-fixer
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --diff-format=udiff --verbose

.PHONY: dependency-analysis
dependency-analysis: vendor ## Runs a dependency analysis with maglnet/composer-require-checker
	docker run --interactive --rm --tty --workdir=/app --volume ${PWD}:/app localheinz/composer-require-checker-action:1.0.0

.PHONY: help
help: ## Displays this list of targets with descriptions
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: infection
infection: vendor ## Runs mutation tests with infection/infection
	mkdir -p .build/infection
	vendor/bin/infection --ignore-msi-with-no-mutations --min-covered-msi=100 --min-msi=100

.PHONY: stan
stan: vendor ## Runs a static analysis with phpstan/phpstan
	mkdir -p .build/phpstan
	vendor/bin/phpstan analyse --configuration=phpstan.neon

.PHONY: test
test: vendor ## Runs auto-review, unit, and integration tests with phpunit/phpunit
	mkdir -p .build/phpunit
	vendor/bin/phpunit --configuration=test/AutoReview/phpunit.xml
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml
	vendor/bin/phpunit --configuration=test/Integration/phpunit.xml

vendor: composer.json composer.lock
	composer validate --strict
	composer install --no-interaction --no-progress --no-suggest
	composer normalize
