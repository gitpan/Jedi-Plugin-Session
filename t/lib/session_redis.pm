#
# This file is part of Jedi-Plugin-Session
#
# This software is copyright (c) 2013 by celogeek <me@celogeek.com>.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package t::lib::session_redis;
use Jedi::App;
use Jedi::Plugin::Session 'Redis';
with 't::lib::role';

my $app_id = 0;

sub jedi_app {
    my ($app) = @_;
    $app->init_session;
    $app->_jedi_session->prefix( ++$app_id );
}

1;
