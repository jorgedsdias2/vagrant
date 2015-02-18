VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.hostname = "vagrant.localhost.com"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network "private_network", ip: "10.0.0.7"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :forwarded_port, guest: 80, host: 8090
  config.vbguest.auto_update = false
  config.vbguest.no_remote = true
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  #config.vm.provision :shell, :path => "utilidades/upgrade-puppet.sh"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path    = 'puppet/modules'
    puppet.manifest_file = 'manifest.pp'
    puppet.options = "--verbose"
  end
end
