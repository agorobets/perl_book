#!/usr/bin/perl

use strict;

my %words = ();
while (<>) {
	chomp($_);
	$words{$_}++;
}

for my $w (sort keys(%words)) {
	printf "%s %d\n", $w, $words{$w};
}