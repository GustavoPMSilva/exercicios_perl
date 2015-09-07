#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $first = $ARGV[0];
my $second = $ARGV[1];

say mdc($first, $second);

sub mdc {
    my ($a, $b) = (shift, shift);
    
    ($a, $b) = ($b, $a) if $b > $a;
    
    my $rem = 0;
    
    while ($b > 0) {
       $rem = $a % $b;
       $a = $b;
       $b = $rem;
    }
    
    return $a;
}
