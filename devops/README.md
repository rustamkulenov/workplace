# DevOps workplace

The following toolset will be installed (if not installed yet):

* git
* packer
* terraform
* aws cli, azure cli

How to install:

1. Install [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html), e.g.:
```
    apt-get update
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
```
2. Run one-liner to install to localhost:
```
    curl -s "https://raw.githubusercontent.com/rustamkulenov/workplace/master/devops/setup.sh" | sudo bash -s
```
Or, if you want to install to multiple machines, then run:
```
    git clone https://github.com/rustamkulenov/workplace.git
    cd workplace
    ansible-playbook devops/devops/playbook.yml -i <your_inventory_file>
```
See [ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) for inventory file format.