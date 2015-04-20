#!/usr/bin/perl

use strict;

my $a, $b;

chomp($a = <STDIN>);
chomp($b = <STDIN>);

print("$a + $b = ", ($a + $b), "\n");