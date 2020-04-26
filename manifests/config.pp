class apache::config {
  $apache::config_paths.each |String $config_path| {
    file { "${config_path}":
      ensure => directory,
    }
  }
}

