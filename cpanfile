requires 'perl', 'v5.14';
requires 'XML::LibXML';
requires 'Moose';
requires 'Method::Signatures::Simple';
# requires 'Some::Module', 'VERSION';

on test => sub {
    requires 'Test::More', '0.88';
};
