#!/usr/bin/perl

use strict;
use warnings;
use 5.22.0;
use autodie;

open my $fin, '<', '1.txt';
open my $fout, '>', '1resultado.txt';

while (<$fin>) {
    chomp;
    say $fout $_;
}

close $fout;
close $fin;
