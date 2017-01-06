node 'puppetmaster.local' {
  include ::puppet
  include ::puppet::master
  include ::redis
  include ::users::michael
}

node 'puppetagent.local' {
  include ::puppet
  include ::users::michael
  host { 'puppet':
    ip => '192.168.1.77',
  }
}

node default {
  include ::puppet
  include ::users::michael 
}


