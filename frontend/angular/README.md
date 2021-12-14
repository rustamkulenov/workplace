# Ansible playbooks for development hosts

This folder contains ansible playbooks for installing software to development hosts and also tests for these playbooks.

## Bootstraping

The following steps are required to develop and run tests for ansible playbooks.

1. Install ruby and gem package manager: 
```
    $ sudo apt install ruby-full
    $ sudo apt install ruby-bundler
```   

2. Install gems specified in [Gemfile](https://bitbucket.org/rkulenov/workplace/src/master/ansible-devhosts/Gemfile):
````
    $ bundle install
````
This step will install test-kitchen.
Test-kitchen uses [kitchen.yml](https://bitbucket.org/rkulenov/workplace/src/master/ansible-devhosts/kitchen.yml) file to generate Vagrantfile and running VMs and tests over them.

## Running tests

Ansible playboks can be tested with Vagrant or test-kitchen.
For testing how ansible playbooks applied with pure [Vagrantfile](https://bitbucket.org/rkulenov/workplace/src/master/ansible-devhosts/Vagrantfile) run:
```
$ vagrant up
$ vagrant destroy
```
For runing tests with test-kitchen run:
```
$ kitchen create               - Create VM using Vagrant as driver
$ kitchen list                 - Check status
$ kitchen converge             - Apply Ansible playbooks
$ kitchen verify
$ kitchen destroy
```
Or simply run:
```
$ kitchen test                 - Run all test steps
```

## Links
Testing ansible playbooks:

* https://habr.com/company/southbridge/blog/303762/
* http://serverspec.org/resource_types.html
* https://github.com/test-kitchen/test-kitchen
* https://github.com/portertech/kitchen-docker
* https://github.com/neillturner/kitchen-verifier-serverspec
* https://github.com/neillturner/kitchen-ansible
* https://github.com/neillturner/omnibus-ansible
