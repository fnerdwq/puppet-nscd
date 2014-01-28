# == Class: nscd
#
# This class configures nscd.
#
# This works on Debian and RedHat like systems.
# Puppet Version >= 3.4.0
#
# === Paramters
#
# TODO
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
  $ensure       = 'running',
) {

  include nscd::params

  # TODO: Parmeter check

  contain 'nscd::install'
  contain 'nscd::service'

  Class['nscd::install']
  ~> Class['nscd::service']

}
