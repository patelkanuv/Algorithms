#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my @array_one   = (1,3,5,6);
my @array_two   = (1,34,51,6);

print " Is Array One sorted ", isArraySorted(scalar@array_one, \@array_one), "\n";
print " Is Array Two sorted ", isArraySorted(scalar@array_two, \@array_two), "\n";

sub isArraySorted {
    my ($n, $array) = @_;
    
    if ($n == 1 ) {
        return 1;
    }

    return ($array->[$n - 1] <= $array->[$n - 2])
            ? 0
            : isArraySorted($n - 1, $array);
}
