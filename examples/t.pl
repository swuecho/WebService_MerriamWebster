use lib '../lib';
use Net::MW::API;
use Storable;
use v5.14;
my $mw = Net::MW::API->new(dict => "collegiate", word => "test", key => "9c39f65f-99b7-4dd4-a9c1-0d4340991202");
say ref $_  for $mw->entries;
say ref $mw->dom;
say $mw->audio_url;
