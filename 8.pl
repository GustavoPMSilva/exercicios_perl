#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my $stateSymbol;
my %states;

say "Digite a sigla do estado ('fim' para sair):";

while ($stateSymbol = <STDIN>) {
    chomp $stateSymbol;
    last if $stateSymbol eq 'fim';
    
    if (exists($states{$stateSymbol})) {
        say "$states{$stateSymbol}";
    }
    else {
        say "Nao existe a entrada $stateSymbol. Digite o nome completo desse estado:";
        my $newStateName = <STDIN>;
        chomp $newStateName;
        $states{$stateSymbol} = $newStateName;
        foreach (keys %states) {
            say "$_ => $states{$_}";
        }
    }
    
    say "Digite a sigla do proximo estado ('fim' para sair):";
}

say "Hash final:";

foreach (keys %states) {
    say "$_ => $states{$_}";
}
