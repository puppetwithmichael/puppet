node 'puppetmaster.local' {
  include ::redis
  include ::users::michael
}

node 'puppetagent.local' {
  include ::users::michael
}

node default {
  include ::users::michael 
}


