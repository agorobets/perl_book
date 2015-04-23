#!/usr/bin/perl

use strict;

my $path  = @ARGV[0];

die "Is not a directory" unless (-d $path);
die "Cannot read" unless (-r $path);

my @files = sort <$path/*>; 
print join("\n", @files);
