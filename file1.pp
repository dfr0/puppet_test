file {'testfile' :
  path	=> '/tmp/testfile',
  ensure => present,
  mode => 0640,
  content => "i'm a test file",
}
