.PHONY: bench coverage cs infection it stan test

it: cs stan test bench

bench: vendor
	vendor/bin/phpbench run --report=aggregate

coverage: vendor
	mkdir -p .build/phpunit
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --dump-xdebug-filter=.build/phpunit/xdebug-filter.php
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text --prepend=.build/phpunit/xdebug-filter.php

cs: vendor
	mkdir -p .build/php-cs-fixer
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --verbose

infection: vendor
	mkdir -p .build/infection
	vendor/bin/infection --ignore-msi-with-no-mutations --min-covered-msi=100 --min-msi=100

stan: vendor
	mkdir -p .build/phpstan
	vendor/bin/phpstan analyse --configuration=phpstan.neon

test: vendor
	mkdir -p .build/phpunit
	vendor/bin/phpunit --configuration=test/AutoReview/phpunit.xml
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml
	vendor/bin/phpunit --configuration=test/Integration/phpunit.xml

vendor: composer.json composer.lock
	composer validate
	composer install
	composer normalize
