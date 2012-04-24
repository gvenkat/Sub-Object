
use strict;
use Test::More 'no_plan';
use Sub::Object;


my $b = function {
  "hello";
};

isa_ok( $b, 'Sub::Object' );
is( $b->(), "hello" );


