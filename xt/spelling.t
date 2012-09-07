## in a separate test file
use Test::More;

eval 'use Test::Spelling;';

plan( skip_all => 'Test::Spelling not installed; skipping' ) if $@;
add_stopwords(<DATA>);
all_pod_files_spelling_ok();

__END__
AnyData
Zucker
CSV
csv
DBI
DTD
SQL
Dowideit
SvenDowideit
tiedhash
submodule
username
mpeg
CGI
HTMLtable
Ini
NCSA
Fieldnames
weblog
logfiles
API
PODs
adTie
ProtocolEncoding
prettyPrint
Sisk's
TableExtract
Jochen
Wiedmann
Malcom
Persico
Wickline
README
Atomicity
Passwd
myfile
parsers
preassign
