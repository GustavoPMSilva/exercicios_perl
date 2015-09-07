#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $maior = 0;

foreach (1, 2, 3, 4, 5) {
    my $num = <STDIN>;
    $maior = $num if $num > $maior;
}

say "\nMaior: $maior";
