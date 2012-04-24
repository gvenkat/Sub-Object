package Sub::Object;

use common::sense;
use overload '&{}' => \&call;


our $VERSION = q/0.0.1/;

sub import {
  my $package = caller;
  *{ "$package\::function" } = \&function;
}

sub function (&) {
  my ( $coderef ) = @_;
  Sub::Object->new( $coderef );
}


sub new {
  my ( $class, $coderef ) = @_;

  bless {
    __imp   => $coderef,
    __attr  => { }
  }, $class;

}

sub get {
  my ( $self, $key ) = @_;
  $self->{__attr}{ $key } || undef;
}

sub set {
  my ( $self, $key, $val ) = @_;
  $self->{__attr}{ $key } = $val;
}

sub call {
  my ( $self, @args ) = @_;

  $self->{__imp}->( $self, @args );
}

sub apply { }



1;
__END__

=head1 TITLE
Sub::Object - Make subroutines behave like full fledged objects

=head1 SUMMARY

  my $callable_obj = function {
    my ( $self, @args ) = @_;
    ...
  };

Then you have callable object 
  
  $callable_obj->( @args ); 


=cut
