
use Test::More 'no_plan';

use Sub::Object;

my $f = function { };

isa_ok( $f, 'Sub::Object' );

can_ok( $f, $_) for qw/set get apply/;





