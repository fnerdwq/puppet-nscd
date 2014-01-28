# Installs the package containing nscd (private)
class nscd::install {

  package { 'nscd':
    ensure => present,
    name   => $nscd::params::package,
  }

}
