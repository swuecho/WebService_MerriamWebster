use v5.14;
use Storable;
use XML::Simple;
use Data::Printer;
my $data_xml = retrieve 'mv.xml';
# create object
my $xml = new XML::Simple;

# read XML file
my $data = $xml->XMLin($data_xml);
my $version = $data->{version};
say $version;
my $entries = $data->{entry};
#say for keys  $entries;

my $entry1 = $entries->{'test[1]'};


say $entry1->{ew}; # the $word
my $et = $entry1->{et};
say join ";", @{$et->{content}}; # the etymology
say $entry1->{fl}; # #adj noun  verb
say $entry1->{hw}->{hindex};
my $sound =  $entry1->{sound}->{wav};
say $sound if $sound;
my $def = $entry1->{def};
#p $def;
say for keys $def;
say $def->{date};
#my $dom = XML::LibXML->load_xml(string => $xml);
#say $dom;
p $def;
