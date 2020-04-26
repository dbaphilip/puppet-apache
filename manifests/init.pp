class apache (
  String $install_name,
   Array $config_paths,
) {
  contain apache::install
  contain apache::config

  Class['::apache::install']
  -> Class['::apache::config']
}

