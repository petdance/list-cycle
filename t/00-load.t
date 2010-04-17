#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'List::Cycle' );
}

diag( "Testing List::Cycle $List::Cycle::VERSION, Perl $], $^X" );
