#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $primeiroNome = <STDIN>;
chomp $primeiroNome;
$primeiroNome = ucfirst $primeiroNome;

my $segundoNome = <STDIN>;
chomp $segundoNome;
$segundoNome = ucfirst $segundoNome;

say "$primeiroNome $segundoNome" if $primeiroNome le $segundoNome;
say "$segundoNome $primeiroNome" if $segundoNome lt $primeiroNome;
