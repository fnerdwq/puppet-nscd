# Manages the nscd service (private)
class nscd::service {

  case $nscd::ensure {
    'running', true:  { $nscd_ensure = true  }
    'stopped', false: { $nscd_ensure = false }
    default: { fail('no valid value for $nscd::ensure') }
  }

  service {'nscd':
    ensure     => $nscd_ensure,
    enable     => $nscd_ensure,
    hasrestart => true,
    hasstatus  => true,
  }

}

