#!/usr/bin/perl

use strict;

my (
	$login,
	$uid,
	$name,
);

open(PW, "</etc/passwd") || die "Cannot open file: $!";

while (<PW>) {
	chomp;
	my @data = split(/:/);
	($login, $uid, $name) = ($data[1], $data[2], $data[4]);
	write;
}

close(PW);

format STDOUT_TOP=
page @<
     $%

.

format STDOUT = 
=============================
| @<<<<<<<<<<<<<<<<<<<<<<<< |
$uid
| @<<<<<<<<<<<<<<<<<<<<<<<< |
$login
| @<<<<<<<<<<<<<<<<<<<<<<<< |
$name
=============================

.