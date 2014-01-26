# Class: clamav
#
# Install clamav
#
class clamav {
  file { [ '/etc/clamav', '/etc/clamav/scans' ]:
    ensure  => directory,
    owner   => 'clam',
    require => Package['clamav'],
  }

  package { 'clamav': ensure => installed }
}
