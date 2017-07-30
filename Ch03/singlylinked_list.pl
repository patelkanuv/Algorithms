#!/usr/bin/perl

use strict;
use warnings;

use Data::SinglyLinkedList;
use Data::Dumper;

my $linked_list = Data::SinglyLinkedList->new(4);
$linked_list->add(5);
$linked_list->add(6);
$linked_list->add(7);
$linked_list->add(8);

$linked_list->traverse();

print Dumper $linked_list->delete_HEAD();
$linked_list->traverse();
print Dumper $linked_list->delete(8);
$linked_list->traverse();

print Dumper $linked_list->delete(5);
$linked_list->traverse();

$linked_list->add(4);
$linked_list->add(5);
$linked_list->traverse();
print Dumper $linked_list->delete(7);
$linked_list->traverse();
