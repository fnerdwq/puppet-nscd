# == Class: nscd
#
# This class configures nscd.
#
# This works on Debian and RedHat like systems.
# Puppet Version >= 3.4.0
#
# === Parameters
#
# [*ensure*]
#   Should we install nscd at all, takes all valid ensure values for the
#   package provide, default: installed
#
# [*service*]
#   Should the nscd service be running, default: running
#
# === Examples
#
# include nscd
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class nscd (
  $ensure  = 'installed',
  $service = 'running',
) {

  include nscd::params

  # Parmeter check
  validate_string($ensure)

  contain 'nscd::install'

  if $ensure !~ /^(absent|purged)$/ {
    contain 'nscd::service'

    Class['nscd::install']
    ~> Class['nscd::service']
  }

}
