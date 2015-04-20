#!/usr/bin/perl

use strict;

my @arr;
while(<STDIN>) {
	chomp($_) && push(@arr, $_);
}

print join(" ", reverse(@arr)), "\n";