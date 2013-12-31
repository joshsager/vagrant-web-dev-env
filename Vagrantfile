# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
  # Virtual Machine to build off of. Ubuntu 64
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  # Provision file for setting up the environment
  config.vm.provision :shell, :path => "provision.sh"
  # Private IP for testing in browser
  config.vm.network :private_network, ip: "23.23.23.09"
  # Used for xdebug in browser
  config.vm.network :forwarded_port, host:9001, guest:9001
end
