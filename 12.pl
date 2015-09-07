#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $entrada = <STDIN>;
chomp $entrada;

if ($entrada =~ m/(UF\w\w)/) {
	say "$1 encontrada";
}
else {
	say "nenhum encontrada";
}
