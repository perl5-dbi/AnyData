use Test::More;

BEGIN {
    eval { require Test::Distribution; };
    if ($@) {
        plan skip_all => 'Test::Distribution not installed';
    }
    else {

#TODO: work to fix these
#              import Test::Distribution only => [ qw/use description sig versions use prereq pod podcoverage/ ];
    }
}

