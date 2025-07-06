# 2-puppet_custom_http_response_header.pp
# Configures Nginx with custom HTTP header X-Served-By

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Get the hostname
$hostname = $facts['networking']['hostname']

# Configure Nginx with custom header
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/default.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create template for Nginx configuration
file { '/etc/puppetlabs/code/environments/production/templates/nginx/default.erb':
  ensure  => file,
  content => @("END")
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    
    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;
    
    server_name _;
    
    add_header X-Served-By <%= @hostname %>;
    
    location / {
        try_files \$uri \$uri/ =404;
    }
}
END
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => Package['nginx'],
}