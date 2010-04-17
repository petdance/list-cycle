#!perl -Tw

use Test::More tests => 5;

BEGIN {
    use_ok( 'List::Cycle' );
}

my $cycle = List::Cycle->new( {vals=> [2112, 5150, 90125]} );
isa_ok( $cycle, 'List::Cycle' );

eval { List::Cycle->new( {flavors => [ qw(chocolate vanilla) ]} ) };
like($@, qr/not a valid constructor/, "die on invalid constructor arg");

my $empty = List::Cycle->new();
isa_ok( $empty, 'List::Cycle' );
eval { $empty->next; };
like($@, qr/no cycle values/, "die on next without vals");
