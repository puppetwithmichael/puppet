class redis {
#exec apt-get update
  exec { 'apt-update':
    command => '/usr/bin/apt-get update'
  }
  #install redis-server package
  package { 'redis-server':
    require => Exec['apt-update'],
    ensure => latest,
  }

  #run the service
  service{ 'redis-server':
    ensure => running,
    require => Package['redis-server'],
  }    
}
