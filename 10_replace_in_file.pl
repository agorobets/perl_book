#!/usr/bin/perl

use strict;

my $input;
my $output;
my $regexp;
my $replacement;
my @buf = ();

print "Please enter input file: ";
chomp($input = <STDIN>);

print "Please enter output file: ";
chomp($output = <STDIN>);

print "Please enter regexp: ";
chomp($regexp = <STDIN>);

print "Please enter replacement: ";
chomp($replacement = <STDIN>);

open(IN_FILE, $input) || die "Cannot open input file: $!";

while(<IN_FILE>) {
	chomp && s/${regexp}/${replacement}/g;
	push (@buf, $_);
}
close(IN_FILE) || die("Cannot close input file: $!");

open(OUT_FILE, ">$output") || die("Cannot open output file: $!");
for my $str (@buf) {
	print OUT_FILE $str . "\n";
}
close(OUT_FILE) || die("Cannot close output file: $!");