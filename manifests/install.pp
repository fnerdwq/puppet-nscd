# Installs the package containing nscd (private)
class nscd::install {

  package { 'nscd':
    ensure => $nscd::ensure,
    name   => $nscd::params::package,
  }

}
