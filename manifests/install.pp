class ntp::install inherits ntp {
  
  $restrict_ipv4 = 'test'
 # restrict_ipv6 = ''
  package { $ntp::package:
  ensure => latest,
  notify => Service[$::ntp::ntp_service],


  }

service { $::ntp::ntp_service:
ensure => running,
enable => true,




}

file { '/etc/ntp.conf':
ensure => present,
content => template('ntp/ntp.conf.erb'),
mode => $ntp::mode,
notify => Service[$::ntp::ntpservice],
}


}
