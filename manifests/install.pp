class apache::install {
  package { 'httpd':
    ensure => present,
  }
}

