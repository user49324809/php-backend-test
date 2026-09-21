<?php
declare(strict_types=1);
require_once __DIR__ . '/palindrome.php';

$tests = [
    ['level', true],
    ['Level', true],
    ['hello', false],

    ['топот', true],
    ['А роза упала на лапу Азора', true],

    ['12321', true],
    ['12345', false],

    ['a', true],
    ['', true],
];

$passed = 0;
$failed = 0;

foreach ($tests as [$input, $expected]) {
    $result = isPalindrome($input);

    if ($result === $expected) {
        echo "PASS: {$input}" . PHP_EOL;
        $passed++;
    } else {
        echo "FAIL: {$input}. Expected: ";
        echo $expected ? 'true' : 'false';
        echo ", got: ";
        echo $result ? 'true' : 'false';
        echo PHP_EOL;

        $failed++;
    }
}

echo PHP_EOL;
echo "Passed: {$passed}, Failed: {$failed}" . PHP_EOL;