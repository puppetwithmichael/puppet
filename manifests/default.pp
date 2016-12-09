node 'mysql.local' {
  include ::redis
  include ::users::michael
}

node /^apa.*\.local/ {
  include ::users::michael 
 #exec apt-get update
  exec { 'apt-update':
    command => '/usr/bin/apt-get update'
  }

  #install mongodb package
  package { 'mongodb':
    require => Exec['apt-update'],
    ensure  => installed,
  }

  #run the service
  service{ 'mongodb':
    ensure => running,
    require => Package['mongodb'],
  }

  #create directory
  file { "/home/michael/vagrant-puppet/default.pp":
     ensure => "directory",
     owner => "vagrant",
     group => "vagrant",
     mode => 750,
  }
}


