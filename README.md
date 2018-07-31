# Workplaces

Scripts to setup workplace (tools for frontend, DevOps development, etc).
Tested on:

* ubuntu 18-04 LTS

## Frontend workplace

The following toolset will be installed (if not installed yet):

* NodeJs and NPM
* git
* Angular-CLI
* VSCode

How to install:

1. Install [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html), e.g.:
```
    apt-get update
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
```
2.1. Run as a root to install to localhost:
```
    curl -s "https://bitbucket.org/rkulenov/workplace/raw/HEAD/frontend/setup.sh" | bash -s
```
2.2. Or, if you want to install to multiple machines, then run:
```
    git clone https://rkulenov@bitbucket.org/rkulenov/workplace.git
    cd workplace
    ansible-playbook frontend/angular/playbook.yml -i <your_inventory_file>
```
See [ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) for inventory file format.