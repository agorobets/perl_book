#!/usr/bin/perl

use strict;

chomp(my $str = <STDIN>);
chomp(my $n = <STDIN>);
print $str x $n, "\n";