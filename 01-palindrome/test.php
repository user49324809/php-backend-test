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