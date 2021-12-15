# DevOps workplace

The following toolset will be installed (if not installed yet):

* git
* packer
* terraform
* docker
* aws cli (via docker), azure cli (via docker)

How to install:

1. Install [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html), python3 and pip3 e.g.:
```
    apt-get update
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
    apt-get install -y python3-pip
```
2. Run one-liner to install to localhost:
```
    curl -s "https://raw.githubusercontent.com/rustamkulenov/workplace/master/devops/setup.sh" | sudo bash -s
```
Or, if you want to install to multiple machines, then run:
```
    git clone https://github.com/rustamkulenov/workplace.git
    cd workplace
    ansible-playbook -c local -i <your_inventory_file> devops/devops/install-requirements.yml  -e 'ansible_python_interpreter=/usr/bin/python3'
    ansible-playbook devops/devops/playbook.yml -i <your_inventory_file>  -e 'ansible_python_interpreter=/usr/bin/python3'
```

Python3 is required to run the playbook. There is a dependency on Docker SDK for Python3. Optionaly, you can [confiigure Python3](https://docs.ansible.com/ansible/latest/reference_appendices/python_3_support.html) interpreter in your inventory file.

See [ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html) for inventory file format.

3. Usage after provisioning   

```bash
$ terraform --version
$ packer --version
$ docker image ls | grep aws
$ docker image ls | grep azure
```   
For convenience you may want to [setup alias for aws-cli command](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html). And do [the same for azure-cli](https://docs.microsoft.com/en-us/cli/azure/run-azure-cli-docker).

Example of '.bashrc' file content for Ubuntu box:
```bash
...
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias  az='docker run --rm -it -v ${HOME}/.ssh:/root/.ssh mcr.microsoft.com/azure-cli az'
...
```

Now you can simply call:
```bash
$ aws --version
$ az --version
```