<?php

declare(strict_types=1);

function isPalindrome(string $text): bool
{
    $normalized = mb_strtolower($text, 'UTF-8');
    $normalized = preg_replace(
        '/[^\p{L}\p{N}+/u',
        '',
        $normalized
    );
}