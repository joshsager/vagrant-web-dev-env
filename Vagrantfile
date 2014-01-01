# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Virtual Machine to build off of. Ubuntu 64
#  config.vm.box = "precise64"
  config.vm.box = "precise32"
#  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  # Provision file for setting up the environment
  config.vm.provision :shell, :path => "provision.sh"
  # Private IP for testing in browser
  config.vm.network :private_network, ip: "23.23.23.10"
  # Used for xdebug in browser
  config.vm.network :forwarded_port, host: 9001, guest: 9001
  # Sync web Dev folder
  config.vm.synced_folder "src/", "/var/www"
  # Start bash in a non-login shell but still source the profile -- https://github.com/mitchellh/vagrant/issues/1673#issuecomment-28288042
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
end
