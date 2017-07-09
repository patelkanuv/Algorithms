#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my $numOfDisks = 3;

my (@from, @to, @aux);

for (my $i = $numOfDisks; $i >= 1; $i--) {
    push(@from, $i);
}

towerOfHanoi($numOfDisks, 'A', 'C', 'B', \@from, \@to, \@aux);

print Dumper \@from, \@to, \@aux;
sub towerOfHanoi {
    my ($n, $from, $to, $aux, $fromArray, $toArray, $auxArray)  = @_;

    if ($n == 1) {
        moveDisks($n, $from, $to, $fromArray, $toArray);
        return 1;
    }
    towerOfHanoi($n-1, $from, $aux, $to, $fromArray, $auxArray, $toArray);
    moveDisks($n, $from, $to, $fromArray, $toArray);
    towerOfHanoi($n-1, $aux, $to, $from, $auxArray, $toArray, $fromArray);
}

sub moveDisks {
    my ($n, $from, $to, $fromArray, $toArray) = @_;
    print "Move Disk $n from rod $from to rod $to \n";
    push(@{$toArray}, pop(@{$fromArray}));
}   
