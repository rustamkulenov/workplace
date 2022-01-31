# DevOps workplace

The following toolset will be installed (if not installed yet):

* git    
* packer
* terraform
* docker
* aws cli (via docker), azure cli (via docker)
* kubectl
* helm3

| Ubuntu 18.04   | Ubuntu 20.04   |
|- |- |
| Fails on Terraform | Success |

## How to provision

Run one-liner to provision to localhost. The one-liner will install ansible, python3, pip3 if not installed:
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

## Usage after provisioning   

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