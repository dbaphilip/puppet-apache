class apache::service {
  service { "${apache::service_name}":
    ensure => running,
  }
}

