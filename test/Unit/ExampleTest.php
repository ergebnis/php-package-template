<?php

declare(strict_types=1);

/**
 * Copyright (c) 2017-2026 Andreas Möller
 *
 * For the full copyright and license information, please view
 * the LICENSE.md file that was distributed with this source code.
 *
 * @see https://github.com/ergebnis/php-package-template
 */

namespace Ergebnis\Package\Test\Unit;

use Ergebnis\Package;
use PHPUnit\Framework;

#[Framework\Attributes\CoversClass(Package\Example::class)]
final class ExampleTest extends Framework\TestCase
{
    use Package\Test\Util\Helper;

    public function testFromStringReturnsExample(): void
    {
        $value = self::faker()->sentence();

        $example = Package\Example::fromString($value);

        self::assertSame($value, $example->toString());
    }
}
