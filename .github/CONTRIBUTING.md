# CONTRIBUTING

We are using [Travis CI](https://travis-ci.com) as a continuous integration system.

For details, see [`.travis.yml`](../.travis.yml).

## Coding Standards

We are using [`friendsofphp/php-cs-fixer`](https://github.com/FriendsOfPHP/PHP-CS-Fixer) to enforce coding standards.

Run

```
$ make cs
```

to automatically fix coding standard violations.

## Static Code Analysis

We are using [`phpstan/phpstan`](https://github.com/phpstan/phpstan) to statically analyze the code.

Run

```
$ make stan
```

to run a static code analysis.

## Tests

We are using [`phpunit/phpunit`](https://github.com/sebastianbergmann/phpunit) to drive the development.

Run

```
$ make test
```

to run all the tests.

## Mutation Testing

We are using [`infection/infection`](https://github.com/infection/infection) to ensure a minimum quality of the tests.

Enable `xdebug` and run

```
$ make infection
```

to run mutation tests.

## Benchmarks

We are using [`phpbench/phpbench`](http://github.com/phpbench/phpbench) to benchmark performance and memory consumption.

Run

```
$ make bench
```

to run all the benchmarks.

## Extra lazy?

Run

```
$ make
```

to enforce coding standards, perform a static code analysis, run tests, and run benchmarks!
