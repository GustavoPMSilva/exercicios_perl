#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my %dictionary = (
    mesa => 'table',
    livro => 'book',
    casa => 'house',
    cama => 'bed',
    quarto => 'room',
);

chomp (my $in = <STDIN>);

if (exists $dictionary{$in}) {
    say $dictionary{$in};
}
else {
    say "Nao sei traduzir";
}
