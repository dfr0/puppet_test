file {'testfile1' :
  path	=> '/tmp/testfile1',
  ensure => file,
  mode => 0640,
  content => "hi1",
}

file {'testfile2' :
  path  => '/tmp/testfile2',
  ensure => directory,
  mode => 0644,
}

file {'testfile3' :
  ensure => link,
  target  => '/tmp/testfile1',
}

user {'dfaro' :
  ensure => absent,
}

notify {"te lo notifico":}
notify {"soy yo mismo bitch!!!!!":}
