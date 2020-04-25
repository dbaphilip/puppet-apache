class apache::install {
  package { "${apache::install_name}":
    ensure => present,
  }
}

