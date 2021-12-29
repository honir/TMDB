#
# Lightweight package to retrieve movie/tv programme data from The Movie Database (http://www.themoviedb.org/ )
#
# This is a custom version of the CPAN package :
#   WWW::TMDB::API - TMDb API (http://api.themoviedb.org) client
#   Version 0.04 (2012)
#   Author Maria Celina Baratang, <maria at zambale.com>
#   https://metacpan.org/pod/WWW::TMDB::API
#
# Modified to:
#  - fix broken methods
#  - add methods for TV programmes, and Configuration
#  - 'version' changed to be 0.05
#
# Modifications: Geoff Westcott, December 2021
#

# Package changes:
#  - new package - not in v0.04
#

package WWW::TMDB::API::Config;

use strict;
use warnings;
our $VERSION = '0.05';

sub configuration {
    my $self = shift;
    my (%params) = @_;
    $self->{api}->send_api( [ 'configuration' ] );
}

1;
