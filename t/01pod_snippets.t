use Test::More;
plan skip_all => 'Need to do more work fixing pod code snippets';

my @modules = qw/ AnyData /;
plan tests => 3;

use Test::Pod::Snippets;
my $tps = Test::Pod::Snippets->new;

$tps->runtest( module => $_, testgroup => 1 ) for @modules;
