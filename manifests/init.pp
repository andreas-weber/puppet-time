# == Class: aw_time
#
# This module manages the default editor.
#
# === Parameters
#
# [*timezone*]
#   The timezone to set.
#
# === Examples
#
#   include aw_time
#
#   class { 'aw_time':
#     'timezone' => 'Europe/Berlin'
#   }
#
# === Authors
#
# Andreas Weber <code@andreas-weber.me>
#
# === Copyright
#
# Copyright 2015 Andreas Weber
#
class aw_time(
  $timezone = 'Europe/Berlin'
)
{
  class { 'timezone':
    timezone => $timezone
  }

  class { 'ntp':
    servers => [
      '0.de.pool.ntp.org',
      '1.de.pool.ntp.org',
      '2.de.pool.ntp.org',
      '3.de.pool.ntp.org'
    ]
  }
}
