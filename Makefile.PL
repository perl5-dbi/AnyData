# -*- perl -*-

require 5.004;
use strict;
require ExtUtils::MakeMaker;
my %opts =
    ('NAME'         => 'AnyData',
     'VERSION_FROM' => 'AnyData.pm',
     'dist'         => { 'SUFFIX'       => ".gz",
			 'DIST_DEFAULT' => 'all tardist',
			 'COMPRESS'     => "gzip -9vf" },
          'PREREQ_PM' => {
                           'Test::More' => '0.9'
                         },			 
     );
if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{'AUTHOR'} = 'Jeff Zucker (jeff@vpservices.com)';
}
ExtUtils::MakeMaker::WriteMakefile(%opts);



