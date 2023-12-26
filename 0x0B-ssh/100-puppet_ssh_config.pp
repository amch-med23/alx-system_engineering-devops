# Using Puppet file to configure the etc/ssh/ssh_config file


file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Deactivate pwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}

file_line { 'Add private key file to ssh_config':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}