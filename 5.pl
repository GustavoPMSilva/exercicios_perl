#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

open my $fin, '<', '5.txt';
my @array = <$fin>;
close $fin;

for (my $i = 0; $i < scalar @array; $i++) {
    chomp $array[$i];
    $array[$i] = int($array[$i]);
}

@array = sort @array;

say "@array";
