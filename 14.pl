#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $entrada = <STDIN>;
chomp $entrada;

if ($entrada =~ m/\d?\d?\d\.\d?\d?\d\.\d?\d?\d\.\d?\d?\d/) {
	say "valido";
}
else {
	say "invalido";
}
