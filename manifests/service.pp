# Manages the nscd service (private)
class nscd::service {

  case $nscd::service {
    /running|true/, true:   { $nscd_service = true  }
    /stopped|false/, false: { $nscd_service = false }
    default: { fail('no valid value for $nscd::ensure') }
  }

  service {'nscd':
    ensure     => $nscd_service,
    enable     => $nscd_service,
    hasrestart => true,
    hasstatus  => true,
  }

}

