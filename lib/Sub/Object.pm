package Sub::Object;

use common::sense;

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
