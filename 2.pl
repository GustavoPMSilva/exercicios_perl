#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

open my $fout, '>', '2resultado.txt';

while (<STDIN>) {
    chomp;
    last if $_ eq 'ok';
    say $fout $_;
}

close $fout;
