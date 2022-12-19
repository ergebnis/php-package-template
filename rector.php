<?php

declare(strict_types=1);

/**
 * Copyright (c) 2017-2022 Andreas Möller
 *
 * For the full copyright and license information, please view
 * the LICENSE.md file that was distributed with this source code.
 *
 * @see https://github.com/ergebnis/php-package-template
 */

use Rector\Config;

return static function (Config\RectorConfig $rectorConfig): void {
    $rectorConfig->cacheDirectory(__DIR__ . '/.build/rector/');

    $rectorConfig->paths([
        __DIR__ . '/src/',
        __DIR__ . '/test/',
    ]);

    $rectorConfig->import(__DIR__ . '/vendor/fakerphp/faker/rector-migrate.php');
};
