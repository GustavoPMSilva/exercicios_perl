#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $entrada = <STDIN>;
chomp $entrada;

$entrada =~ s/UF\w\w/UFRJ/g;

say $entrada;
