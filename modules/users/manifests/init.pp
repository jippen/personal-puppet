class users{
  include 'users::secret'

  user {'jippen':
    ensure     => present,
    gid        => 'wheel',
    home       => '/home/jippen',
    managehome => true,
    shell      => '/bin/bash',
    uid        => 1000,
#    password   => $jippen_pass_hash,
  }



#  file{ '/home/jippen':
#    ensure  => directory;
#    owner   => 'jippen',
#    group   => 'wheel',
#    mode    => 0700,
#    require => User['jippen'],
#  }
}