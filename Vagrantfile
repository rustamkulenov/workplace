# -*- mode: ruby -*-
# vi: set ft=ruby :

# This Vagrantfile is used for testing setup scripts via http.
# Requires python-apt installed

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/bionic64"

   config.vm.provision "shell", inline: <<-SHELL

      # Install ansible
      if ! [ -x "$(command -v ansible-playbook)" ]; then
        apt-get update
        apt-get install software-properties-common
        apt-add-repository -y ppa:ansible/ansible
        apt-get update
        apt-get install -y ansible
      fi
      
      # Setup frontend workplace
      curl -s "https://raw.githubusercontent.com/rustamkulenov/workplace/master/frontend/setup.sh" | sudo bash -s
   SHELL
end
