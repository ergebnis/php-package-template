.PHONY: bench coverage cs infection it stan test

it: cs stan test bench

bench: vendor
	vendor/bin/phpbench run --report=aggregate

coverage: vendor
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text

cs: vendor
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --verbose

infection:
	vendor/bin/infection --min-covered-msi=80 --min-msi=80

stan:
	vendor/bin/phpstan analyse --level 7 src test

test: vendor
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml
	vendor/bin/phpunit --configuration=test/Integration/phpunit.xml

vendor: composer.json composer.lock
	composer self-update
	composer validate
	composer install
