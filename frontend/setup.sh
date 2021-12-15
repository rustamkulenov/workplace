#!/bin/sh

apt-get update
apt-get install software-properties-common

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo 'Installing ansible...'
  apt-add-repository -y ppa:ansible/ansible
  apt-get update
  apt-get install -y ansible
fi

MYTMPDIR=$(mktemp -d)
trap "rm -rf $MYTMPDIR" EXIT
cd $MYTMPDIR
git clone https://github.com/rustamkulenov/workplace.git
cd workplace
ansible-playbook frontend/angular/playbook.yml -i localhost.inv -c local