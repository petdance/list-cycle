#!perl -Tw

use Test::More tests => 3;

BEGIN {
    use_ok( 'List::Cycle' );
}

my $cycle = List::Cycle->new( {vals=> [2112, 5150, 90125]} );
isa_ok( $cycle, 'List::Cycle' );

my $dump = <<END_DUMP;
pointer => 0
values => 2112,5150,90125
END_DUMP

# we ought to do this, since it's dumped by unordered hash
$dump = (join "\n", sort split /\n/, $dump) . "\n";

is($cycle->dump, $dump, "dumped properly");
