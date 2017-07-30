package Data::LinkedListNode;

use strict;
use warnings;

sub new {
    my $class = shift;
    my %proto = @_;
    $proto{next}    = 'NULL' if !defined $proto{next};

    bless \%proto, $class;
}

sub data {
    my $self = shift;

    @_ ? ($self->{data} = shift) : $self->{data};
}

sub next {
    my $self = shift;

    @_ ? ($self->{next} = shift) : $self->{next};
}

1;
