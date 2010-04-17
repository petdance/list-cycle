#!perl -Tw

use Test::More tests => 8;

BEGIN {
    use_ok( 'List::Cycle' );
}

my $cycle = List::Cycle->new({ vals=> [ qw(123 456) ] });
isa_ok( $cycle, 'List::Cycle' );

is( $cycle->next, 123, q{got first value} );
is( $cycle->next, 456, q{got second value} );
is( $cycle->next, 123, q{got first value} );

$cycle->set_values([ qw(101 999) ]);

is( $cycle->next, 101, q{got first value} );
is( $cycle->next, 999, q{got second value} );
is( $cycle->next, 101, q{got first value} );
