# -*- perl -*-

require 5.006;
use strict;
require ExtUtils::MakeMaker;
ExtUtils::MakeMaker::WriteMakefile(
    (
        'NAME'          => 'AnyData',
        'VERSION_FROM'  => 'lib/AnyData.pm',
        'ABSTRACT_FROM' => 'lib/AnyData.pm',
        'LICENSE'       => "perl",
        'dist'          => {
            'SUFFIX'       => ".gz",
            'DIST_DEFAULT' => 'all tardist',
            'COMPRESS'     => "gzip -9vf"
        },
        'CONFIGURE_REQUIRES' => { "ExtUtils::MakeMaker" => "6.30" },
        'BUILD_REQUIRES'     => {
            'Test::Output'                        => '0.01',
            'Test::More'                          => '0.9',
        },
        'PREREQ_PM' => {},
        "test"      => { "TESTS" => "t/*.t" },
        "META_ADD"  => {
            resources => {
                homepage   => 'http://github.com/SvenDowideit/Data-Foswiki',
                repository => 'git://github.com/SvenDowideit/Data-Foswiki.git',

                #            x_twitter => 'http://twitter.com/SvenDowideit/',
            }
        },
        ( $ExtUtils::MakeMaker::VERSION >= 6.3002 ?
              ( 'LICENSE' => 'perl', )
            : () ),
        (
            $ExtUtils::MakeMaker::VERSION >= 5.43
            ? (
                'AUTHOR' => [
                    'Jeff Zucker (jeff@vpservices.com)',
                    'Sven Dowideit (SvenDowideit@fosiki.com)',
                ]
              )
            : ()
        ),
    )
);

