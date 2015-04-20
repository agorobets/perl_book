#!/usr/bin/perl 

use strict;

chomp(my $fahr = <STDIN>);

if ($fahr > 75) { print 'too hot'; }
elsif ($fahr < 68) { print 'just right!'; }
else { print 'too cold'; }

print "\n";