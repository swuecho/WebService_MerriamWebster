use v5.14;
use Storable;
use utf8::all ;
use XML::LibXML;
my $xml = retrieve 'mv.xml';
my $doc = XML::LibXML->load_xml(string => $xml);
#say $dom->toString;
my $strEncoding = $doc->encoding();
say $strEncoding;
my $strVersion = $doc->version();
say $strVersion;
#my $str = $doc->toStringHTML();
#say $str
my $tagname = "entry";
my @entries = $doc->getElementsByTagName($tagname);
#say $_->toString for @nodelist;

my $entry1 =  $entries[2];
say $entry1->getChildrenByTagName("def")->get_node(0)->getChildrenByTagName("dt");
say $entry1->getChildrenByTagName("def");
#say $doc->indexElements();
