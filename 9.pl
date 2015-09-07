#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

use Getopt::Long;

my %opcoes = ();
GetOptions(\%opcoes,
    'h|help',
    'i|info',
    'n|number=i',
    'l|lenght=s',
);

if (!$opcoes{h} and !$opcoes{i} and !exists $opcoes{n} and !exists $opcoes{l}) {
    say 'Try \'9.pl -h\' or \'9.pl --help\' for more information.';
}
if ($opcoes{h}) {
    say 'Usage:';
    say '9.pl -h	help';
    say '9.pl -i	info';
    say '9.pl -n number	Odd or Even';
    say '9.pl -l string	Length';
}
if ($opcoes{i}) {
    say 'Info:';
    say 'Developed by Gustavo Silva - gustavopmirandasilva@gmail.com';
}
if (exists $opcoes{n}) {
    if ($opcoes{n} % 2 == 0){
        say 'Even';
    }
    else {
        say 'Odd';
    }
}
if (exists $opcoes{l}) {
    say length($opcoes{l});
}
