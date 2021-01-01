<?php

declare(strict_types=1);

/**
 * Copyright (c) 2017-2021 Andreas Möller
 *
 * For the full copyright and license information, please view
 * the LICENSE.md file that was distributed with this source code.
 *
 * @see https://github.com/ergebnis/php-library-template
 */

namespace Ergebnis\Library\Test\AutoReview;

use Ergebnis\Test\Util;
use PHPUnit\Framework;

/**
 * @internal
 *
 * @coversNothing
 */
final class SrcCodeTest extends Framework\TestCase
{
    use Util\Helper;

    public function testSrcClassesHaveUnitTests(): void
    {
        self::assertClassesHaveTests(
            __DIR__ . '/../../src/',
            'Ergebnis\\Library\\',
            'Ergebnis\\Library\\Test\\Unit\\'
        );
    }
}
