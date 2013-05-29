package Net::OAuth::LP::Models::Tasks;

our $VERSION = '0.009'; # VERSION

use strictures 1;
use Moo;
use Types::Standard qw(Str Int ArrayRef HashRef);
use Method::Signatures;
use List::Objects::WithUtils;
use Data::Dump qw(pp);

with('Net::OAuth::LP::Models');

has 'tasks' => (is => 'rw',);

method entries {
  array(@{$self->tasks->{entries}});
}

1;

__END__

=head1 NAME

Net::OAuth::LP::Models::Tasks - Bug Tasks Model

=head1 DESCRIPTION

Interface to setting/retrieving bug tasks information

=head1 SYNOPSIS

    my $c = Net::OAuth::LP::Client->new(consumer_key => 'blah',
                                        access_token => 'fdsafsda',
                                        access_token_secret => 'fdsafsda');

    my $b = Net::OAuth::LP::Models::Bug->new(c => $c);
    $b->find(1);
    say $b->tasks->all;

=head1 METHODS

=head2 B<new>

    my $tasks = Net::OAuth::LP::Models::Tasks->new(tasks => $bug->tasks);

=head2 B<all>

Returns all tasks results

    say $tasks->all;

=cut
