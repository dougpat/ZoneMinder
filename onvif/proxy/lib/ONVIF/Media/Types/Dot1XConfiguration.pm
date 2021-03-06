package ONVIF::Media::Types::Dot1XConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Dot1XConfigurationToken_of :ATTR(:get<Dot1XConfigurationToken>);
my %Identity_of :ATTR(:get<Identity>);
my %AnonymousID_of :ATTR(:get<AnonymousID>);
my %EAPMethod_of :ATTR(:get<EAPMethod>);
my %CACertificateID_of :ATTR(:get<CACertificateID>);
my %EAPMethodConfiguration_of :ATTR(:get<EAPMethodConfiguration>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Dot1XConfigurationToken
        Identity
        AnonymousID
        EAPMethod
        CACertificateID
        EAPMethodConfiguration
        Extension

    ) ],
    {
        'Dot1XConfigurationToken' => \%Dot1XConfigurationToken_of,
        'Identity' => \%Identity_of,
        'AnonymousID' => \%AnonymousID_of,
        'EAPMethod' => \%EAPMethod_of,
        'CACertificateID' => \%CACertificateID_of,
        'EAPMethodConfiguration' => \%EAPMethodConfiguration_of,
        'Extension' => \%Extension_of,
    },
    {
        'Dot1XConfigurationToken' => 'ONVIF::Media::Types::ReferenceToken',
        'Identity' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AnonymousID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'EAPMethod' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'CACertificateID' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
        'EAPMethodConfiguration' => 'ONVIF::Media::Types::EAPMethodConfiguration',
        'Extension' => 'ONVIF::Media::Types::Dot1XConfigurationExtension',
    },
    {

        'Dot1XConfigurationToken' => 'Dot1XConfigurationToken',
        'Identity' => 'Identity',
        'AnonymousID' => 'AnonymousID',
        'EAPMethod' => 'EAPMethod',
        'CACertificateID' => 'CACertificateID',
        'EAPMethodConfiguration' => 'EAPMethodConfiguration',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::Dot1XConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Dot1XConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Dot1XConfigurationToken


=item * Identity


=item * AnonymousID


=item * EAPMethod


=item * CACertificateID


=item * EAPMethodConfiguration


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::Dot1XConfiguration
   Dot1XConfigurationToken => $some_value, # ReferenceToken
   Identity =>  $some_value, # string
   AnonymousID =>  $some_value, # string
   EAPMethod =>  $some_value, # int
   CACertificateID =>  $some_value, # token
   EAPMethodConfiguration =>  { # ONVIF::Media::Types::EAPMethodConfiguration
     TLSConfiguration =>  { # ONVIF::Media::Types::TLSConfiguration
       CertificateID =>  $some_value, # token
     },
     Password =>  $some_value, # string
     Extension =>  { # ONVIF::Media::Types::EapMethodExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::Dot1XConfigurationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

