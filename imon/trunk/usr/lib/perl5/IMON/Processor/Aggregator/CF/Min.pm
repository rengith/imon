#
# $Id: Min.pm 4403 2011-12-07 11:43:58Z rengith $

package IMON::Processor::Aggregator::CF::Min;
use base 'IMON::Processor::Aggregator::CF::Base';

sub name {
    my $self = shift;

    return 'Min';
}

sub short_name {
    my $self = shift;

    return 'm';
}

sub update {
    my ($self, $val) = @_;
    
    if (defined $self->{value}) {
        if ($val < $self->{value}) {
            $self->{value} = $val;    
        }
    }else {
        $self->{value} = $val;
    }
}

1;
# vim: set sw=2 ts=4 expandtab:
