# -*- mode: ruby -*-
# vi: set ft=ruby :

# This Vagrantfile is used for testing setup scripts via http.
# Requires python-apt installed

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/bionic64"

   config.vm.provision "shell", inline: <<-SHELL
      curl -s "https://bitbucket.org/rkulenov/workplace/raw/HEAD/frontend/setup.sh" | bash -s
   SHELL
end
