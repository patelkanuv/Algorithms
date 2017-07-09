#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my @array;

binary(5); 
#print Dumper \@array;

sub binary {
    my ($n) = @_;

    if($n < 1) {
        print join("", reverse(@array)), "\n";
    }
    else {
        $array[$n - 1]  = 0;
        binary($n - 1);
        $array[$n - 1]  = 1;
        binary($n - 1)
    }
}
