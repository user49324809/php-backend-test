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
    if ($normalized === null) {
        throw new RuntimeException('Failed to normalize input');
    }
    $chars = preg_split('//u', $normalized, -1, PREG_SPLIT_NO_EMPTY);
    if ($chars === false) {
        throw new RuntimeException('Invalid UTF-8 input');
    }
    $left = 0;
    $right = count($chars) - 1;
    while ($left < $right) {
        if ($chars[$left] !== $chars[$right]) {
            return false;
        }
        $right--;
        $left++;
    }
    return true;
}