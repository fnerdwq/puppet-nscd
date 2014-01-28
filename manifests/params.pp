# set flavor specific variables (private)
class nscd::params {

  case $::osfamily {
    'Debian': {
      $package = 'nscd'
    }
    'RedHat': {
      $package = 'nscd'
    }
    default:  {
      fail("Module ${module_name} is not supported on ${::operatingsystem}/${::osfamily}")
    }
  }
}
