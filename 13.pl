#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $entrada = <STDIN>;

if ($entrada =~ m/(\d\d):(\d\d)/) {
	say "Hora: $1 Minuto: $2";
}
