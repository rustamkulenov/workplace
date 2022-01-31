#!/bin/sh

apt-get update
apt-get install software-properties-common

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo 'Installing ansible...'
  apt-add-repository -y ppa:ansible/ansible
  apt-get update
  apt-get install -y ansible
fi

if ! [ -x "$(command -v python3)" ]; then
  echo 'Error: python3 is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v pip3)" ]; then
  echo 'Installing pip3...'
  apt-get install -y python3-pip
fi

MYTMPDIR=$(mktemp -d)
trap "rm -rf $MYTMPDIR" EXIT
cd $MYTMPDIR
git clone https://github.com/rustamkulenov/workplace.git
cd workplace
# Install Ansible-galaxy prerequisites
ansible-playbook -c local -i localhost.inv devops/devops/install-requirements.yml  -e 'ansible_python_interpreter=/usr/bin/python3'
# Run DevOps playbook
ansible-playbook -c local -i localhost.inv devops/devops/playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'