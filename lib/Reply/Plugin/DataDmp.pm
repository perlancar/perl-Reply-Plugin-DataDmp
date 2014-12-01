package Reply::Plugin::DataDmp;

# DATE
# VERSION

use strict;
use warnings;

use base 'Reply::Plugin';

use Data::Dmp 'dmp';
use overload ();

sub new {
    my $class = shift;
    my %opts = @_;

    my $self = $class->SUPER::new(@_);
    return $self;
}

sub mangle_result {
    my $self = shift;
    my (@result) = @_;
    return @result ? dmp(@result) : ();
}

1;
# ABSTRACT: Format results using Data::Dmp

=head1 SYNOPSIS

 ; .replyrc
 [DataDmp]

=head1 DESCRIPTION
