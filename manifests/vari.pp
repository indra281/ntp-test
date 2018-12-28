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

$mode = '0777'

}
