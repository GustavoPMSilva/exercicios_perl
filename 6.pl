#!usr/bin/perl

use strict;
use warnings;
use 5.22.0;
use autodie;

my %firstHash = (
    get => 'perl',
    teacher => 'Luiz',
    practice => 'perl',
);

my %secondHash = (
    get => 'network',
    teacher => 'Luiz',
    tag => 'IP',
);

foreach (keys %firstHash) {
    say $_ if exists $secondHash{$_};
}
