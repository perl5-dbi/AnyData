use Test::More;
plan skip_all => 'Need to do more work fixing pod code snippets';

eval "use Test::Pod::Snippets";
plan skip_all => "Test::Pod::Snippets required" if $@;

my @modules = qw/ AnyData /;
plan tests => 3;

my $tps = Test::Pod::Snippets->new;

$tps->runtest( module => $_, testgroup => 1 ) for @modules;
