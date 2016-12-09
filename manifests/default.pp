node 'puppetmaster.local' {
  include ::redis
  include ::users::michael
}

node 'myothercoolnode.local' {
  include ::users::michael
}

node default {
  include ::users::michael 
}


