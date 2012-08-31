#!/usr/local/bin/perl -wT
use strict;
use warnings;

use Test::More;
plan tests => 2;
use Test::Output;


use AnyData;

my $table = adTie( 'CSV', ["word,number\none,1\ntwo,2\nthree,3\nunknown\nunknowncomma,\nzero,0"] );

ok( 6 == adRows($table), "Failed rows" );

stdout_is( sub {adDump( $table )}, <<'HERE', 'export fixed format' );
<word:number>
[one][1]
[two][2]
[three][3]
[unknown][]
[unknowncomma][]
[zero][0]
HERE


__END__
