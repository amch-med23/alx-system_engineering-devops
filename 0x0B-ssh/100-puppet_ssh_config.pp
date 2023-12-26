# Configurng the SSH CLient file, as per requested.


file { '/etc/ssh/ssh_config':
  ensure  => present,
}

file_line { 'Set private key':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ss h/school',
  match => '^IdentityFile',
}

file line { 'Deactivate password authentication':
  path  => '/stc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}