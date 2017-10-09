.PHONY: bench composer coverage cs it test

it: cs test bench

bench: composer
	vendor/bin/phpbench run --report=aggregate

composer:
	composer self-update
	composer validate
	composer install

coverage: composer
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml --coverage-text

cs: composer
	vendor/bin/php-cs-fixer fix --config=.php_cs --diff --verbose

test: composer
	vendor/bin/phpunit --configuration=test/Unit/phpunit.xml
	vendor/bin/phpunit --configuration=test/Integration/phpunit.xml
