#!/bin/sh

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo 'Error: ansible is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v python3)" ]; then
  echo 'Error: ansible is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v pip3)" ]; then
  echo 'Error: ansible is not installed.' >&2
  exit 1
fi

MYTMPDIR=$(mktemp -d)
trap "rm -rf $MYTMPDIR" EXIT
cd $MYTMPDIR
git clone https://github.com/rustamkulenov/workplace.git
cd workplace
# Install Ansible-galaxy prerequisites
ansible-playbook -c local -i localhost.inv, devops/devops/install-requirements.yml  -e 'ansible_python_interpreter=/usr/bin/python3'
# Run DevOps playbook
ansible-playbook devops/devops/playbook.yml -i localhost.inv -c local -e 'ansible_python_interpreter=/usr/bin/python3'