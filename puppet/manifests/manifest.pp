# Puppet configuration

$as_vagrant = 'sudo -u vagrant -H bash -l -c'
$home = '/home/vagrant'

# Base

class base {

    # Update apt-get
    exec { 'apt-get update':
        command => '/usr/bin/apt-get update'
    }
}

# Apache

class install_apache {

  package { "apache2":
    ensure => present,
  }

  service { "apache2":
    ensure => running,
    require => Package["apache2"],
  }

  define apache::loadmodule () {
    exec { "/usr/sbin/a2enmod $name" :
      unless => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
      notify => Service[apache2]
    }
  }

  apache::loadmodule{"rewrite":}

}

# PHP

class install_php {

  package { "php5":
    ensure => present,
  }

  package { "php5-cli":
    ensure => present,
  }

  package { "php5-xdebug":
    ensure => present,
  }

  package { "php5-mysql":
    ensure => present,
  }

  package { "php5-imagick":
    ensure => present,
  }

  package { "php5-mcrypt":
    ensure => present,
  }

  package { "php-pear":
    ensure => present,
  }

  package { "php5-dev":
    ensure => present,
  }

  package { "php5-curl":
    ensure => present,
  }

  package { "php5-sqlite":
    ensure => present,
  }

  package { "libapache2-mod-php5":
    ensure => present,
  }

}

# MySQL

class install_mysql {

  package { "mysql-server":
    ensure => present,
  }

  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }
}

# phpmyadmin

class install_phpmyadmin {
    package {
        "phpmyadmin":
            ensure => present,
            require => [
                Exec['apt-get update'],
                Package["php5", "php5-mysql", "apache2"],
            ]
    }

    file {
        "/etc/apache2/conf.d/phpmyadmin.conf":
            ensure => link,
            target => "/etc/phpmyadmin/apache.conf",
            require => Package['apache2'],
            notify => Service["apache2"]
    }
}

# Packages

class install_packages {

    package { 'curl':
        ensure => present
    }

    package { 'build-essential':
      ensure => present
    }

    package { 'git-core':
      ensure => present
    }

    # Nokogiri dependencies.
    package { ['libxml2', 'libxml2-dev', 'libxslt1-dev']:
      ensure => present
    }

    # ExecJS runtime.
    package { 'nodejs':
      ensure => present
    }

}

# RVM

class install_rvm {

  package { "rvm":
    ensure => present,
  }

  service { "rvm":
    ensure => running,
    require => Package["rvm"],
  }
}

# Includes

include base
include install_apache
include install_php
include install_mysql
include install_phpmyadmin
include install_packages
include install_rvm














# RVM

#class install_rvm {
#
#    class { 'rvm':
#        version => '1.20.12'
#    }
#
#}

# RVM

#class install_rvm {
#
#    exec { 'install_rvm':
#      command => "${as_vagrant} 'curl -L https://get.rvm.io | bash -s stable'",
#      creates => "${home}/.rvm/bin/rvm",
#      require => Package['curl']
#    }
#
#}

# Ruby

#class install_ruby' {
#
#    exec { 'install_ruby':
#      command => "/.rvm/bin/rvm install ruby-2.0.0",
#      creates => "/.rvm/bin/ruby",
#      require => Exec['install_rvm']
#    }
#
#    exec { "gem install bundler --no-rdoc --no-ri":
#      creates => "/.rvm/bin/bundle",
#      require => Exec['install_ruby']
#    }
#
#}
