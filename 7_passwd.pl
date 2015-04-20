#!/usr/bin/perl

use strict;

while(<>) {
	chomp;
	my ($name, $pass, $uid, $guid, $gcos) = split(/:/);
	$gcos =~ s/,.*//;
	print "${name}: ${gcos}\n";
}