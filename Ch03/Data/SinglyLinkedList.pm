package Data::SinglyLinkedList;

use strict;
use warnings;

use Carp qw(croak);
use Data::LinkedListNode;

sub new {
    my ($class, $data)  = @_;

    my $new_list    = Data::LinkedListNode->new(data => $data);
    my $self->{HEAD}= $new_list;

    return bless $self, $class;
}

sub add {
    my ($self, $data)   = @_;

    my $new_node    = Data::LinkedListNode->new(data => $data);
    my $last_node   = $self->get_last_node();
    $last_node ->next($new_node);
    return;
}

sub traverse {
    my ($self)  = @_;

    my $node   = $self->{HEAD};
    while ($node ne 'NULL')  {
        print "Node data ", $node->data, "\n";
        $node   = $node->next();
    }

    return $node;
}

sub delete {
    my ($self, $data)  = @_;
    
    my $node   = $self->{HEAD};
    my $prev_node;
    while ($node ne 'NULL')  {
        if($node->data eq $data) {
            last;
        }
        else {
            $prev_node  = $node;
            $node       = $node->next();
        }        
    }

    croak "Node not found" if $node eq 'NULL';
    return $self->delete_HEAD() if !defined $prev_node;
    
    $prev_node->next($node->next());
    $node->next('NULL');

    return $node;
}

sub delete_HEAD {
    my ($self)  = @_;
    
    my $node        = $self->{HEAD};
    $self->{HEAD}   = $self->{HEAD}->next();
    $node->next('NULL');

    return $node;
}

sub get_last_node {
    my ($self)  = @_;

    my $node   = $self->{HEAD};
    while ($node->next() ne 'NULL') {
        $node   = $node->next();
    }

    return $node;
}
1;
