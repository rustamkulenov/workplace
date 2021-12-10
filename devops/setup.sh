#!/bin/sh

if ! [ -x "$(command -v ansible-playbook)" ]; then
  echo 'Error: ansible is not installed.' >&2
  exit 1
fi

MYTMPDIR=$(mktemp -d)
trap "rm -rf $MYTMPDIR" EXIT
cd $MYTMPDIR
git clone https://github.com/rustamkulenov/workplace.git
cd workplace
ansible-playbook devops/devops/playbook.yml -i localhost.inv -c local