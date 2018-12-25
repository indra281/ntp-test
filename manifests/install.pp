class ntp::install inherits ntp {

  package { $ntp::package:
  ensure => latest,
  notify => Service[$::ntp::ntp_service],


  }

service { $::ntp::ntp_service:
ensure => running,
enable => true,




}


}
