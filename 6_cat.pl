#!/usr/bin/perl

use strict;

my @str;
while (<>) {
	chomp && unshift (@str, scalar reverse)
}

print join("\n", @str);