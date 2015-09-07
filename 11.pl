#!/usr/bin/perl

use strict;
use warnings;
use autodie;
use 5.22.0;

my %contact;

say "Deseja [c]onsultar, [i]ncluir, [l]istar ou [s]air?";

while (chomp (my $operation = <STDIN>)) {
    if ($operation eq 'c') {
        say "\nDigite o nome";
	chomp (my $name = <STDIN>);
        $name = ucfirst $name;
        if (!search($name)) {
            say "Nao existe entrada para $name. Deseja cria-la? [s/n]";
            chomp (my $answer = <STDIN>);
            include($name) if $answer eq 's';
        }
    }
    elsif ($operation eq 'l') {
        list();
    }
    elsif ($operation eq 'i') {
        say "\nDigite o nome";
        chomp (my $name = <STDIN>);
        $name = ucfirst $name;
        if (exists $contact{$name}) {
            say "Ja existe uma entrada para $name. Deseja sobrescreve-la? [s/n]";
            chomp (my $answer = <STDIN>);
            include($name) if $answer eq 's';
        }
        else {
            include($name);
        }
    }
    else {
        last;
    }

    say "\nDeseja [c]onsultar, [i]ncluir, [l]istar ou [s]air?";
}

sub list {
    foreach my $i (keys %contact) {
        say "\n$i";
        foreach (keys %{$contact{$i}}) {
            say "$_ => ${$contact{$i}}{$_}";
        }
    }
}

sub include {
    my $name = shift;
    say "\nDigite o telefone";
    chomp (my $phone = <STDIN>);
    say "\nDigite o email";
    chomp (my $email = <STDIN>);
    say "\nDigite o endereco";
    chomp (my $addr = <STDIN>);
    
    my $entry = {
        Telefone => $phone,
        Email => $email,
        Endereco => $addr,
    };
    
    $contact{$name} = $entry;
}

sub search {
    my $name = shift;
    if (exists $contact{$name}) {
        foreach (keys %{$contact{$name}}) {
            say "$_ => ${$contact{$name}}{$_}";
        }
        
        return 1;
    }
    else {
        return 0;
    }
}
