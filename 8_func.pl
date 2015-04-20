#!/usr/bin/perl

our @DIGITS = qw(one two three four five six seven eight nine);

sub add 
{
	my ($a, $b) = @_;

	my $c = $a + $b;

	my $a_str = ucfirst($DIGITS[$a - 1]) || $a;
	my $b_str = $DIGITS[$b - 1] || $b;
	my $c_str = $DIGITS[$c - 1] || $c;

	print "${a_str} plus ${b_str} equals ${c_str}\n";
}

add(1, 2);
add(10, 2);
add(5, 5);