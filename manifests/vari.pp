class ntp::vari {

$restrict_ipv4 = '0.0.0.1'
$restrict_ipv6 = '::1'

case $::os[ 'family'] {
'Debian' : {

  $ntp_service = 'ntp'
}
'RedHat' : {

  $ntp_service = 'ntpd'
}

}

$package = 'ntp'

$mode = '0777'

}
