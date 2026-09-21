<?php

declare(strict_types=1);

function isPalindrome(string $text): bool
{
    $normalized = mb_strtolower($text, 'UTF-8');
    $normalized = preg_replace(
        '/[^\p{L}\p{N}]+/u',
        '',
        $normalized
    );
    if($normalized === null) {
        throw new RuntimeException('Failed to normalize input');
    }
    $chars = preg_split('//u', $normalized, -1, PREG_SPLIT_NO_EMPTY);
}