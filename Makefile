.PHONY: bench coverage cs infection it stan test

it: cs stan test bench

bench: vendor
	vendor/bin/phpbench run --report=aggregate

coverage: vendor
	mkdir -p .phpunit
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text

cs: vendor
	mkdir -p .php-cs-fixer
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --verbose

infection: vendor
	mkdir -p .infection .phpunit
	vendor/bin/infection --min-covered-msi=80 --min-msi=80

stan: vendor
	mkdir -p .phpstan
	vendor/bin/phpstan analyse --configuration=phpstan.neon --level=max src

test: vendor
	mkdir -p .phpunit
	vendor/bin/phpunit --configuration=test/AutoReview/phpunit.xml
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml
	vendor/bin/phpunit --configuration=test/Integration/phpunit.xml

vendor: composer.json composer.lock
	composer self-update
	composer validate
	composer install
	composer normalize
