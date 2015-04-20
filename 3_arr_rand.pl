#!/usr/bin/perl

use strict;

srand;

my @arr;
while(<STDIN>) {
	chomp($_) && push(@arr, $_);
}

print $arr[int(rand(@arr))], "\n";

