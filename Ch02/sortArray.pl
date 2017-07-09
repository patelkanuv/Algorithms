#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my @array_one   = (11, 80, 51, 6, 3, 100, 476);
my @array_two   = (11, 80, 51, 6, 3, 100, 476);

#Ascending Order sort
sortArray(scalar@array_one, \@array_one);
print Dumper \@array_one;

#Descending order sort
sortArrayDesc(scalar@array_two, 1, \@array_two);
print Dumper \@array_two;

#Ascending Order
sub sortArray {
    my ($n, $array) = @_;
    
    if ($n == 1 ) {
        return 1;
    }
    if($array->[$n - 1 ] <= $array->[$n - 2 ]) {
        ($array->[$n - 1 ], $array->[$n - 2 ])  = ($array->[$n - 2 ], $array->[$n - 1 ]);    
    }
    sortArray($n-1, $array);
    sortArray($n-1, $array);
}

#Descending Order
sub sortArrayDesc {
    my ($n, $end, $array) = @_;
    
    if ($n == $end ) {
        return 1;
    }
    if($array->[$n - 1 ] >= $array->[$n - 2 ]) {
        ($array->[$n - 1 ], $array->[$n - 2 ])  = ($array->[$n - 2 ], $array->[$n - 1 ]);    
    }
    sortArrayDesc($n-1, $end, $array);
    sortArrayDesc($n, ++$end, $array);
}
