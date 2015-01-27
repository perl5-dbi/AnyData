# -*- perl -*-

require 5.006;
use strict;
use ExtUtils::MakeMaker 6.30;

my %test_requires = (
    'Test::Output'               => '0.01',
    'Test::More'                 => '0.9',
);
my @authors = (
    'Jeff Zucker (jeff@vpservices.com)',
    'Sven Dowideit (SvenDowideit@fosiki.com)',
);
ExtUtils::MakeMaker::WriteMakefile(
    (
        'NAME'          => 'AnyData',
        'VERSION_FROM'  => 'lib/AnyData.pm',
        'ABSTRACT_FROM' => 'lib/AnyData.pm',
        'LICENSE'       => "perl_5",
        'CONFIGURE_REQUIRES' => { "ExtUtils::MakeMaker" => "6.30" },
        ( $ExtUtils::MakeMaker::VERSION < 6.63_03 ? 'BUILD_REQUIRES' : 'TEST_REQUIRES' ) => \%test_requires,
        'PREREQ_PM' => { 'CGI' => '0' },
        "META_ADD"  => {
            'meta-spec' => { version => 2 },
            dynamic_config => 0,
            homepage   => 'https://metacpan.org/release/AnyData',
            repository => {
                url => 'https://github.com/perl5-dbi/AnyData.git',
                web => 'https://github.com/perl5-dbi/AnyData',
                type => 'git',
            },
            bugtracker => {
                mailto => 'bug-AnyData@rt.cpan.org',
                web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=AnyData',
            },
                #            x_twitter => 'http://twitter.com/SvenDowideit/',
            x_deprecated => 1,
        },
        ( $ExtUtils::MakeMaker::VERSION >= 6.3002 ?
              ( 'LICENSE' => 'perl', )
            : () ),
        'AUTHOR' => (
            $ExtUtils::MakeMaker::VERSION >= 6.57_02 ?
              \@authors
            : join(', ', @authors)
        ),
    )
);

