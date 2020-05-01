define apache::vhost (
  String[1] $server_name,
  String[1] $document_root,
) {

  file { "/var/www/${document_root}":
    ensure  => directory,
  }

  $index_config_params = {
    'server_name' => $server_name,
  }

  file { "/var/www/${document_root}/index.html":
    ensure  => present,
    content => epp('apache/index.html.epp', $index_config_params),
    require => File["/var/www/${document_root}"],
  }

  $vhost_config_params = {
    'server_name'   => $server_name,
    'document_root' => $document_root,
  }

  file { "${apache::vhost_dir}/${server_name}.conf":
    ensure  => present,
    content => epp('apache/vhost.conf.epp', $vhost_config_params),
  }

}

