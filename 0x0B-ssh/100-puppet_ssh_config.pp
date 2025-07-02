file_line { 'Declare identity file':
  path  => '/home/vagrant/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile\s+',
}

file_line { 'Turn off passwd auth':
  path  => '/home/vagrant/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication\s+',
}
