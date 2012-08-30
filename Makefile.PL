# -*- perl -*-

require 5.004;
use strict;
require ExtUtils::MakeMaker;
ExtUtils::MakeMaker::WriteMakefile(
    (
        'NAME'          => 'AnyData',
        'VERSION_FROM'  => 'AnyData.pm',
        'ABSTRACT_FROM' => 'AnyData.pm',
        'dist'          => {
            'SUFFIX'       => ".gz",
            'DIST_DEFAULT' => 'all tardist',
            'COMPRESS'     => "gzip -9vf"
        },
        'PREREQ_PM' => {
            'Test::More'                          => '0.9',
            'Test::Pod::Spelling::CommonMistakes' => '1.000'
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

