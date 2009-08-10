use strict;
use Test::More tests => 15;
use List::Rotation;

my $a1  = List::Rotation::Toggle->new;

foreach( 1 .. 3 )
{
    my $a2  = List::Rotation::Toggle->new;
    is( $a2->next,  1,  "First  Toggle is first  element, iteration $_" );
    is( $a1->next,  '', "Second Toggle is second element, iteration $_" );
    is( $a2->next,  1,  "Third  Toggle is first  element, iteration $_" );
    is( $a1->next,  '', "Forth  Toggle is second element, iteration $_" );
}

is( $a1->next,  1,  "This Toggle is first  element" );
$a1->reset;
is( $a1->next,  1,  "This Toggle is first  element" );
is( $a1->next,  '', "This Toggle is second element" );
