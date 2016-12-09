class users::michael (
  $fullname = 'michael chambers'
) {
  group { 'michael':
    ensure => 'present',
    gid    => '502',     
  }

  user { 'michael':
    ensure           => 'present',
    gid              => '502',
    home             => '/home/michael',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '502',
    name             => $fullname
  }
}
