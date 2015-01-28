#! perl

use strict;
use warnings;

use Test::More;

plan skip_all => "Deprecated dist, Pod will not completed";

use Test::Pod::Coverage;
use Pod::Coverage;

all_pod_coverage_ok();
