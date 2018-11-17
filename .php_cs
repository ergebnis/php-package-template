<?php

use Localheinz\PhpCsFixer\Config;

$header = <<<EOF
Copyright (c) 2018 Andreas Möller

For the full copyright and license information, please view
the LICENSE file that was distributed with this source code.

@see https://github.com/localheinz/repository
EOF;

$config = Config\Factory::fromRuleSet(new Config\RuleSet\Php71($header));

$config->getFinder()->in(__DIR__);

$directory = \getenv('TRAVIS') ? \getenv('HOME') : __DIR__;

$config->setCacheFile($directory . '/.php-cs-fixer/.php_cs.cache');

return $config;
