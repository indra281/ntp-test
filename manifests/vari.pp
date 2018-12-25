class ntp::vari {

case $::os[ 'family'] {
'Debian' : {

  $ntp_service = 'ntp'
}
'RedHat' : {

  $ntp_service = 'ntpd'
}

}

$package = 'ntp'
$restrict_ip = '0.0.0.1'
$mode = '0777'

}
